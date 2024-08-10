#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read NAME
: '
#check username
while [[ ! $INPUT_USERNAME =~ ^.{,22}$ ]]
do
  echo Enter your username:
  read INPUT_USERNAME
done
#set username
NAME=$INPUT_USERNAME '

#get user id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME'")

#if user not found
if [[ -z $USER_ID ]]
then
INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$NAME')")
#get user id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$NAME'")
echo Welcome, $NAME! It looks like this is your first time here.
else
#get games played
      GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
#get best game
      BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
  
GAME() {
#Guess
echo Guess the secret number between 1 and 1000:
read GUESS

#game setup
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=1

while [[ $GUESS -ne $SECRET_NUMBER ]]
do
# check integer
if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
  echo That is not an integer, guess again:
  read GUESS

  elif (( GUESS < SECRET_NUMBER ))
  then
  (( NUMBER_OF_GUESSES++ ))
  echo "It's higher than that, guess again:"
  read GUESS
  
  elif (( GUESS > SECRET_NUBMER ))
  then
  (( NUMBER_OF_GUESSES++ ))
  echo "It's lower than that, guess again:"
  read GUESS
  
fi

done

#insert game data
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
}
GAME

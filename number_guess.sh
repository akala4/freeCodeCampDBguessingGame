#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\nEnter your username:"
read ENTERED_NAME
QUERY_RESULT=$($PSQL "SELECT name, COUNT(game_id) AS GAMES, MIN(score) AS BEST_SCORE FROM users INNER JOIN games USING(user_id) WHERE name='$ENTERED_NAME' GROUP BY user_id,name;")
USER_ID=0
if [[ -z $QUERY_RESULT ]]
  then
    echo "Welcome, $ENTERED_NAME! It looks like this is your first time here."
  else
    echo $QUERY_RESULT | while read  NAME BAR GAMES BAR BEST_SCORE
    do
      echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST_SCORE guesses."
    done
fi
NUMBER=$(( (RANDOM % 1000) + 1 ))
echo -e "\nGuess the secret number between 1 and 1000:"
WIN=false
TRIES=0
while true 
do
  read ENTERED_NUMBER
  if [[ ! $ENTERED_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $ENTERED_NUMBER -lt $NUMBER ]]
    then
      TRIES=$(( $TRIES+1 ))
      echo "It's lower than that, guess again:"
    fi
    if [[ $ENTERED_NUMBER -gt $NUMBER ]]
    then
      TRIES=$(( $TRIES+1 ))
      echo "It's higher than that, guess again:"
    fi
    if [[ $ENTERED_NUMBER -eq $NUMBER ]]
    then
      TRIES=$(( $TRIES+1 ))
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$ENTERED_NAME';")
      if [[ ! $USER_ID ]]
      then
        USER_INSERT_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$ENTERED_NAME');")
        USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$ENTERED_NAME';")
      fi
      INSERT_RESULT=$($PSQL "INSERT INTO games(user_id, score) VALUES($USER_ID,$TRIES);")
      echo "You guessed it in $TRIES tries. The secret number was $NUMBER. Nice job!"
      break
    fi
  fi
done 

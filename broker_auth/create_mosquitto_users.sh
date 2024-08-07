#!/bin/bash

# Path to the passwd file
PASSWD_FILE="/mosquitto/config/passwd"

# Ensure the passwd file is empty or create it
> $PASSWD_FILE

# Read the users.txt file and add each user
while IFS=: read -r username password; do
    mosquitto_passwd -b $PASSWD_FILE $username $password
done < /mosquitto/config/users.txt

echo "Users have been added to the passwd file."
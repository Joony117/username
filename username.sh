#!/bin/bash
#username.sh
#jun yi
#cpsc298 - intro to unix


INPUT_FILE=${1:-}


# Check if the file exists
if [[ -f "$INPUT_FILE" ]]; then
  while read -r line; do
    if echo "$line" | grep -Eq "^[a-z][0-9a-z_]{2,11}$ > /dev/null 2>&1"; then
      echo "$line → Valid username, thank you"
    else
      echo "$line → Invalid username"
    fi
  done < "$INPUT_FILE"

elif [[ ! -t 0 ]]; then
  while read -r line; do
    if echo "$line" | grep -Eq "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1; then
      echo "$line → Valid username, thank you"
    else
      echo "$line → Invalid username"
    fi
  done

else
  echo "Enter a valid username. The only characters that can be used are
lower case letters,
digits, and
the underscore character
It must start with a lower case letter
It must contain at least three but no more than 12 characters"

  while true; do
    read -rp "Enter a valid username: " USERNAME
    if echo "$USERNAME" | grep -Eq "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1; then
      echo "$USERNAME → Valid username, thank you"
      break
    else
      echo "$USERNAME → Invalid username"
    fi
  done
fi


# README for Username Validation Script

## Author Information
- **Name:** [Junho Yi]
- **Course:** [CPSC298 - Intro to Unix]
- **Assignment:** Username Validation
- **Date:** [20Jan26]

## Program Description
[The program first checks if theres and arguement/redirection/terminal input and reacts accordingly. it will either read off a file line by line or read off of users console inputs and check if the provided username is within specs as guidelined on the canvas assignment webpage]

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
OR
./username.sh < YourFileHere
OR
./username.sh YourFileHere
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`

My script uses grep to validate whether or not the provided username fits the required criteria. The while loop iterates continously until a valid name is fed in, and the grep with the E(extended regex operators) and q(silence modifier, to not print any lines) modifier is used to output either a true or false value for our main logic. The redirect `> /dev/null 2>&1` is put in there since its a requirement, which will send all outputs to a null "trashcan" so we dont have terminal sphaghetti, although the -q modifier already handles that.

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
abc
abc123
hello123
- Example invalid usernames and why they fail (at least two)
a - too short
 - whitespace
12av - doesnt start with lowercase letter
- How you used the username-input file to test
used command ./username.sh < user-input to "redirect" which apprantly lets the script read from stdin, not directly from the file, this confused me for a bit

## Challenges and Solutions
[had to create a bunch of conditionals to make the code work for all cases(user input + redirection" > input-text" + provided arguement), and also figuring out what INPUT-FILE=${1:-} meant, but other than that i reused the provided code]

## Resources
[used ChatGpt to explain what certain lines of code does and used it to list proper syntax i could use.]

## License
This project is part of coursework for Chapman University and is intended for educational purposes.

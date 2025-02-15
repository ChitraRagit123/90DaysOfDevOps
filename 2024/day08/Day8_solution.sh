#!/bin/bash

#TASK1:COMMENTS
<< hello
hello there this is a multiline comment
hello

#for loop to print numbers from 1 to 5
for i in {1..5}
do
  echo "Number: $i"
done

: '
end
of 
the 
script
'


#TASK2:ECHO
echo "Hello there!! this is chitra,i'm a devops enthusiast. My hobbies includes,chess,badminton,etc"


#TASK3: VARIABLES
echo "Enter your name:"
read name
echo "Hi there myself, $name"


#TASK 4:USING VARIABLES
echo "Enter your first num"
read num1
echo "Enter your second num"
read num2
echo "sum of $num1 and $num2 is $((num1 + num2))"

#TASK5: USING BUILD-IN VARIABLES
echo "Home directory of the current user: $HOME"
echo "Present working directory: $PWD"
echo "Name of the script: $0"


#TASK6: WILDCARDS
# *->Matches zero or more characters
echo "List of .sh files:"
ls *.sh

# ? -> Matches exactly one character
echo "Matching files:"
ls file?.txt




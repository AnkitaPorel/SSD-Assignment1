ASSIGNMENT 1

#FOLDER STRUCTURE

2024201043_A1
	|-----Q1
	|     |-----question1.sh
	|     |-----quotes.txt
	|-----Q2
	|     |-----question2.sh
	|-----Q3
	|     |-----question3.sh
	|     |-----testfolder1
	|     |           |----testfile.txt
	|     |-----testfolder2
	|     |           |----testfolder
	|-----Q4
	|     |-----question4.sh

# Question 1

Instruction for execution- ./question1.sh

Commands used- grep, awk, gsub

This script removes empty lines from the text file quotes.txt, present in the shell script program's directory, saves the output in quotes_empty.txt file. Then it removes duplicate lines and saves them in quotes_rdup.txt file. Then it counts the number of quotes by personality and prints them in quotes_byperson.txt file. The program then generates lists all the words in the file that starts with 's' and is not followed by 'a'.

# Question 2

Instruction for execution- ./question2.sh

This script generates a password with length not less than 8 characters and not more than 10 characters, with at least one Captial English alphabet, at least one small English and at least one symbol among %&#$@()!
This script also generates an account number for banks with length not less than 12 characters and not more than 14 characters containing only numbers i.e [0-9] without repetition. The first
character of the account number is not zero. The account number does not form a Fibonacci series in any part of the overall string. The account number does not have a repeated number for more than 3 times i.e. it should have 666 or 555 in any part of the account number.

# Question 3

Instruction for execution- ./question3.sh

Commands used- du, sort

This script finds only the directories present in the current folder and sorts them based on their size. I have put some test folders for user to test. The user can add other directories of their choice to test the script.

# Question 4

Instruction for execution- ./question4.sh

Commands used- mkdir, touch, find, mv

This script has only one line. This script creates a directory temp_activity. Inside this directory, the script creates files temp<i>.sh, for i=1 to 50. Thus it will generate 50 .sh files, with names like- temp1.sh, temp2.sh,..., temp50.sh. Then it changes the extension of files temp1.sh, temp2.sh,..., temp25.sh to temp1.txt, temp2.txt, ..., temp25.txt. The rest will remain same.

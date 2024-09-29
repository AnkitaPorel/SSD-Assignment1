#!/bin/bash

grep -v '^[[:space:]]*$' quotes.txt>quotes_empty.txt   #checking for empty lines using grep command and regular expression in the file quotes.txt and saving them in quotes_empty.txt

awk '!seen[$0]++' quotes_empty.txt>quotes_rdup.txt    #removing duplicates line from the trimmed file quotes_empty.txt and saving them in quotes_rdup.txt

awk -F'~' '{ gsub(/^ +| +$/,"",$NF); cnt[$NF]++ } END { for (author in cnt) print author, "- ", cnt[author] }' quotes_rdup.txt>quotes_byperson.txt    #running a loop to find authors' names and number of quotes by them, reading from the reduced duplicates file quotes_rdup.txt and saving in quotes_byperson.txt

grep -oi '\bs[^a ]\w*\b' quotes_rdup.txt   #using grep command to find words in the file quotes_rdup.txt, because it has only unique lines. It lists all words starting with s and not followed by a

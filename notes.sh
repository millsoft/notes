#!/bin/sh
#Notes Script by milmike.com
#Search all txt files for a string and output the matches
#The entries in the txt files should be separated by "---" (or anything you specify)

#Installation:  add . /path/to/this/script/notes.sh  in .zshrc or .bashrc

NOTES_DIR="/home/michael/Dropbox/planetit/notes"
FILES_EXTENSION="*.txt"
ENTRY_SEPARATOR="---"


notes() {
	ASK="$@"
	find $NOTES_DIR -type f -iname $FILES_EXTENSION -print0 | xargs -0 awk -v RS=$ENTRY_SEPARATOR -v ASK=$ASK 'tolower($0) ~ ASK {print "\n########### " FILENAME "\n" $0}'
}


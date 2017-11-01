#!/bin/sh
#Notes Script by milmike.com
#Search all txt files for a string and output the matches
#The entries in the txt files should be separated by "---" (or anything you specify)

#Installation:  add . /path/to/this/script/notes.sh  in .zshrc or .bashrc

NOTES_DIR="~/Dropbox"

notes() {
	ASK="$@"
	find . -iname "*.txt" -print0 | xargs -0 awk -v RS='---' -v ASK=$ASK 'tolower($0) ~ ASK {print "\n########### " FILENAME "\n" $0}'
}


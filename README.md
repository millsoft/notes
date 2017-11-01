Notes
===================

Notes is a simple wrapper for `awk`. It searches for all `txt` files in a specific path recursively for a specific pattern. All found entries will be printed in the console. Each file can have multiple "entries" separated by `---` (or anything you specify in the script file. 

----------

Installation
------------

 - edit the path where your txt files are, for example I use it with dropbox: 
 `NOTES_DIR="~/Dropbox/mynotes"`
 - make the script executable: `chmod +x notes.js`
 - Add the full path to this script in `~/.bashrc` or `~/.zshrc` like this:  `. /home/michael/scripts/notes/notes.sh`
 -  Reload your rc file with `source ~/.bashrc` (or .zshrc)

Search
------------
To search for things you type the following:

    notes blabla


Example txt file:
-------------

    Extract bz2
    bzip2 -d filename.bz2
    ---
    Extract tar
    tar -xvf file.tar
    ---
    Extract tar.bz2
    tar -xjvf file.tar.bz2

Now when you want to know how to extract a tar file, you search it like this: `notes extract bz2`  or just `notes bz2`
The output looks like this:

    ########### ./linux/extract.txt
    Extract BZ2
    bzip2 -d filename.bz2

The first line is always the filename and the rest is the found entry.

01.11.2017 by [MilMike](https://www.milmike.com).
Still work in progress. Feel free to request features or just fork it and make your own "terminal search engine"
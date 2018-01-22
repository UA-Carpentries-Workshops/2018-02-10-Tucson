# Lesson 1

## Graphical User Interface and the Command Line

Graphical User Interfaces (GUIs) are what we might be most familiar with and typically have mouse and keyboard support along with a more user friendly interface.  Operating systems like Windows and MacOS utilize GUIs for navigation purposes (Finder/My Computer) as well as applications like iTunes, Photoshop, Word, and Excel.  These are useful tools but can have drawbacks such as speed, hardware requirements, and/or compatibility issues. For these reasons the command line is still a useful tool among a variety of fields like biology, software development, mathematics, etc. We will start today by navigating the file system of our computers.  Let's start by opening up our home directory with the more user friendly GUI provided with our operating systems.

 * Open Finder or My computer
 * What do we see?

This is what is called our Home Directory. Now let's make the leap into the command line by opening terminal or gitbash!

 * Split your screen in half: one side is the GUI, the other the command line
 * Do the command line and GUI seem similar in any way?

### *Command Line Navigation*

Because the command line looks cryptic there are two things you can always do to orient yourself. `pwd` Stands for print working directory and shows the root to the current directory you are in from left to right.  Directories are indicated in the command line by a `/`.  The second command is `whoami` and will output the current user. 

```bash
pwd
```
```bash
whoami
```

**The file structure shown using `pwd` can be thought of as a tree of files with branches and nodes.**

What if we were not sure what `pwd` actually does?  For that we can use `--help` or `man`.  This will vary by operating system and `man` stand for manual.  Try using each of these commands with `pwd` on your system.  Note: the order of each of these commands.

```bash
pwd --help
man pwd
``` 

Let's use some of these flags/options to see what they do.

#### cd: Moving across directories
Now that we know where we are lets ensure our GUI and command line are in the same directory.  To move directories we 'change directory' using `cd`. This is followed by some sort of direction for the computer.  For example: 

```bash
cd ../
cd ~
cd Documents/
cd /Users/usrname/Documents
cd
```


#### ls: Listing directory contents
To show what is in the current directory we use list `ls`. We can also give `ls` more direction to list the contents of other directories. 

```bash
ls
ls Documents/
```
Or change how we output the file contents using what are called flags.  Flags are options that command after a command and tell that application to do something specific that is not default.  How might we find out what these flags are and what they do?  Try some flags out that you find interesting. 

```bash
ls -lh
ls -lha Documents/
```

### Creating directories and files 
We create directories by using the make directory command `mkdir`. 

```bash
mkdir directory_name
```

Now we have some basic skills to start working with files.  Build a file structure for today's workshop.  The directories could look something like this (drawn on board/computer):

### *Viewing Files*
There are a variety of ways to view files.  We will use a few of these methods to understand how they differ from each other. We will download a text file to the data directory to work with.  Download the file [here](https://github.com/UA-Carpentries-Workshops/2018-02-10-Tucson/blob/shell_lessons/shell_lessons/data/the_road_not_taken.txt). 

```bash
cat [PATH/]FILENAME
less [PATH/]FILENAME    -Hint: exit with 'q' key
head [-number] [PATH/]FILENAME
tail [-number] [PATH/]FILENAME
```

This may be a good time to introduce wildcards.

##### Quick check (Etherpad)
How can we check what is inside the directory?

Now we will create a file.  You can do this two ways.  The first is to `touch` creating an empty file, or we can open a text editor while simultaneously creating a file.

```bash
touch file_name_touch
nano file_name_editor
```

Nano is what is known as a text editor.  Text editors can be thought of as a very simple word processor without any bells or whistles.  It exists to write text into a file from the command line: that's it.  However, its simplicity makes it a powerful tool for compatibility and as a place to write programmable scripts.  

##### Activity
Create a file in your current directory and write some text in that file.  Exam your file using the commands we have learned.

We can also copy, move and remove files and directories.

```bash
cp -i [PATH/]SUBJECT_NAME [PATH/]NEW_TARGET_NAME
mv -i [PATH/]SUBJECT_NAME [PATH/]NEW_TARGET_NAME
rm -i [PATH/]SUBJECT_NAME [PATH/]NEW_TARGET_NAME
```

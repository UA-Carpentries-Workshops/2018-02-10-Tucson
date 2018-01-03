# Lesson 1

## Graphical User Interface and the Command Line

Graphical User Interfaces (GUIs) are what we might be most familiar with and typically have mouse and keyboard support along with a more user friendly interface.  Operating systems like Windows and MacOS utilize GUIs for navigation purposes (Finder/My Computer) as well as applications like iTunes, Photoshop, Word, and Excel.  These are useful tools but can have drawbacks such as speed, hardware requirements, and/or compatibility issues. For these reasons the command line is still a useful tool among a variety of fields like biology, software development, mathematics, etc. We will start today by navigating the file system of our computers.  Let's start by opening up our home directory with the more user friendly GUI provided with our operating systems.

 * Open Finder or My computer
 * What do we see?

This is what is called our Home Directory. Now let's make the leap into the command line by opening terminal or gitbash!

 * Split your screen in half: one side is the GUI, the other the command line
 * Do the command line and GUI seem similar in any way?

### *Command Line Navigation*

Because the command line looks cryptic there are two things you can always do to orient yourself. `pwd` Stands for path working directory and shows the root to the current directory you are in from left to right.  Directories are indicated in the command line by a `/`.  The second command is `whoami` and will output the current user. 

```bash
pwd
```
```bash
whoami
```

**The file structure shown using `pwd` can be thought of as a tree of files with branches and nodes.**

#### ls: Listing directory contents
To show what is in the current directory we use `ls`. We can also give `ls` more direction to list the contents of other directories. 

```bash
ls
ls Documents/
```
Or change how we output the file contents using what are called flags.  Flags are options that command after a command and tell that application to do something specific that is not default. 

```bash
ls -lh
ls -lha Documents/
```
To learn more about program options you can type the command name and help `ls --help` or call the manual using `man ls`

```bash
man ls
```  
#### cd: Moving across directories
Now that we know where we are lets ensure our GUI and command line are in the same directory.  To move directories we 'change directory' using `cd`. This is followed by some sort of direction for the computer.  For example: 

```bash
cd Documents/
cd /Users/usrname/Documents
```

### *Viewing Files*
There are a variety of ways to view files.  We will use a few of these methods to understand how they differ from each other.

```bash
cat [PATH/]FILENAME
less [PATH/]FILENAME    -Hint: exit with 'q' key
head [-number] [PATH/]FILENAME
tail [-number] [PATH/]FILENAME
```

### Creating directories and files 
We create directories by using the make directory command `mkdir`. 

```bash
mkdir directory_name
```

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

Now we have some basic skills to start work with files.  Build a file structure for today's workshop.  The directories could look something like this (drawn on board/computer):




    	


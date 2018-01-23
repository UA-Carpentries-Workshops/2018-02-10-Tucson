# Lesson 2

## Working With Data in bash and Version Control

Another benefit to using the command line is the ability to manipulate data files.  This utility can then be compounded by the use of loops, conditionals, and scripting which we will learn about later.  

Usage of the command line also allows us to use a version control application called git.  Version control is a useful tool as it tracks any changes to your files over time.  Imagine one may have several drafts saved of a single manuscript.  With version control we could track the edits made between drafts overtime in a single file.   

First we need to acquire the data we will be using today and tomorrow using git.  For this we will clone a repository with `git clone`.  When using any git commands we first call `git` followed by the specific command, `clone` in this case.

Clone the repository for this workshop to collect the data.  Feel free to download this wherever you like.  We will be copying all the data files into our `data/` directory and deleting this cloned repository.
```bash
git clone https://github.com/UA-Carpentries-Workshops/2018-02-10-Tucson.git
```   

Copy the gapminder_by_country directory and the Afghanistan_raw.xlsx file only using the command line!

### Open source software and Github
Before we start working with any of this data we will use git to begin tracking our changes.  Note that `git` is a software application while Github is a website.  The website Github is commonly used with git and is a hosting server for git.  Github allows users to store their version controlled software and data files on their servers while also creating an open source develop community where people can access code to hopefully make better!  For this reason, Github is an excellent place for the development of large projects due to its centralized version control capabilities and global access.

Please take the time to make a Github account at [github.com](https://github.com/) if you have not yet already.  We will need to feed our Github information into git.

Now we will configure git to our Github account using the following commands.

```bash
git config --global user.name "my_username"
git config --global user.email my_email@gmail.com
``` 

Next we need to initialize our repository so git knows to start tracking changes.  A git repository is essentially a data structure were you will begin tracking any changes made to files.  Cd to the top of this workshops file structure and initialize it with git.  

** ls your this directory before you `git init` it and take note of what you see. **

```bash
git init .
```  

##### Activity
**ls this directory again.  What looks different?**
Post in the etherpad what changed.


The first thing we should always do after initializing a repository is add a .gitignore file.  This file is a user created list of files that are to be ignored by git.  For example, if you have large data sets it is recommended that you do not push this to Github.  Therefore, we would ignore those files or the entire directory of data.

##### Activity
What to does the `.` signify before gitignore?

```bash
nano .gitignore

Type:
[path_to_data]/data/*
```

Great!  Before we get started on changing anything we should stage our git repository and send it to Github. This is part 1 of a 3 step process to send our changes to Github.  Staging --> Committing --> Pushing

### Staging your files

Staging your files means that you are preparing files to send to Github.  For example, we could stage our entire repository or we could stage individual files that are ready and leave unfinished files out of this phase. Staging is performed with the `git add` command.

```bash
git add [PATH]/file
git add . #This is an easy way to add what ever is contained in the current directory, and anything downstream
``` 

To check what we staged (what is different from our last commit) we use:

```bash
git status #tells us what files have changed

or

git diff #tells us what has changed in the file
```


The point of staging is to prep ONLY the files that need to be sent to Github.  Imagine we are working on a large project where many files have been changed but only a few have current bugs.  We want to select only the files that had bugs and have now been fixed to be sent to others for use or develop.  

**Staging allows us to be specific about which altered files we want to send into the world.**  

### Committing files

The next step is to commit our added files.  This is the final stage before we send the files to github.  Committing tells git to send all the files that were staged to the git repository.  It is common usage to add a comment to any commit to give others and yourself what changes were made with this commit.  This is indicated with -m and a message in quotes. 

```bash
git commit -m "Updated a login bug"
``` 

#### Activity
Run a git status.  What happened to our added files?

To see the changes made within our commit files we have to use a different command than git diff.

```bash
git show
```

### Pushing our files to Github

Finally we have staged our changes, and committed them with a nice informational message.  Now we will send them to Github using the push command.  `git push` pushes these files within our repository to a remote server. In our case it will be our Github accounts.

```bash
git push
```

Now go to your Github account in a browser and see if our repository was pushed correctly.


## Working with Data


The .xlsx indicates that this file is a Microsoft Excel file.  Excel is a spreadsheet application with a GUI.  Let's open that file up using Excel or Numbers.

Now try using our shell commands to view this file.  Do any work?




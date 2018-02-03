# Lesson 4

## Before we begin

We have spent the first part of our afternoon becoming familiarized with shell scripting. Before 
we start, we will import/push our script onto our github repository by following the steps
of lesson 2.

## Collaborating with github

Now days, working on a project requires the collaborative efforts of researchers and/or developers.
The more people are involved in a project, the more beneficial is for the project itself. However, it also
increases the challenges of sharing and tracking both old and new information, particularly when 
sharing pieces of code.

Github provides a place where anyone with an internet connection can share code with their collaborators
(or even the whole world!) for free. Furthermore, it also provides a clear mean for different people
to track distinct contributions to the history of any piece of code.  

At this point we all have created our own github repository (repo). You are "Owners" of this repository.
In order to have someone else to contribute and make changes to your repository ("Collaborator")
you will need to give them access.

For the next step, get into pairs. One person will be the “Owner” and the other will be
the “Collaborator”. The goal is that the Collaborator add changes into the Owner’s repository. 

We will switch roles during this lesson, so both persons will play Owner and Collaborator.

Also we will use both the command line/terminal and the GUI interface to observe how the changes
in github are tracked.


### Allowing/Accepting collaborations in your repo

1) You can provide access to your collaborator by clicking on the settings button on the right
of the Gihub GUI interface, then select Collaborators, and enter your partner’s username.

2) To accept access to the Owner’s repo, the Collaborator needs to go to 
https://github.com/notifications and accept access to the Owner’s repo. 

* Take a couple of minutes to provide access to each other repos.

3) Next, the Collaborator needs to download a copy of the Owner’s repository to their machine. 
We will do this by “cloning a repo”, just as we did in lesson 2 to obtain the gapminder dataset.

* Take a moment to clone the Owner's repo onto your computer.

4) Now, you should have access to your partners code! You can view it and modify it as how we
have done so in the previous lesson. We will start by doing a small change. 

* Take a moment to add a comment onto your partners code by using nano. Remember to save the
changes in your computer. Once you have finished your will:

```bash
git add shared_shell_script.sh
git commit -m "Added a comment about some part of the code on line x"
git push origin master
```

Note that we didn’t have to create a remote called origin: Git uses this name by default when 
we clone a repository. 

Now, take a look to the Owner’s repository on its GitHub website (maybe you need to refresh 
your browser) You should be able to see the new commit made by the Collaborator.

5) To download the Collaborator’s changes from GitHub, the Owner should now enter:

```bash
git pull origin master
```

6) Now the three repositories (Owner’s local, Collaborator’s local, and Owner’s on GitHub) are in sync.

* Switch roles with your partner and add another comment to the code. Once you are done,
make sure to share the changes onto github.


## Conflicts

If you have ever been working on the same project but using different machines you might have ended up with 
different copies of the same file. The same problem will
happend when different people work on a single project (it might have already happened to you today!). 
A "conflict" represents two different modifications done to the same file. Luckily,
version control helps us manage these conflicts by giving us tools to resolve overlapping changes.

Let's create and resolve a conflict. We will work as a pair as in the previous exersize: 

1) One of you open the "final_lesson_3.sh" file in nano.
2) Change the file in some way.
3) The proceed to git add, git commit (with the proper message!), and git push to origin master.

Now let’s have the other partner make a different change to their copy without updating from GitHub:

4) Open the "final_lesson_3" file in nano.
5) Change the file in some way.
6) The proceed to git add, git commit (with the proper message!), and git push to origin master.

* What happened? 

Git detects that the changes made in one copy overlap with those made in the other and stops us 
from trampling on our previous work. What we have to do is pull the changes from GitHub, merge 
them into the copy we’re currently working in, and then push that. 

Let’s start by pulling:

```bash
git pull origin master
```
Git pull tells us there’s a conflict. It will also tell us where that conflict is in the affected file.

Using this information, it is now up to us to fix it!

7) Open the filein nano.
8) Remove the markers added by github
9) Reconcile the changes. We can do anything we want: keep the change made in the local repository, 
keep the change made in the remote repository, write something new to replace both, or get 
rid of the change entirely. 

10) To finish merging, we add and commit our file to the repository. 

```bash
git add final_lesson_3.sh
git status
git commit -m "Merge changes from GitHub"
git push origin master
```
Git keeps track of what we’ve merged with what, so we don’t have to fix things by hand again 
when the collaborator who made the first change pulls again.


## Avoiding conflicts

While Github has tools to minimize and resolve conflicts, it is best to avoid them
in the first place. A typical work pipeline while collaborating in github is as follows:

a) Update your local repo with git pull origin master.
b) Make your changes and stage them with git add.
c) Commit your changes with git commit -m.
d) Upload the changes to GitHub with git push origin master.

Note that it is better to make many commits with smaller changes rather than of one commit with 
massive changes: small commits are easier to read and review.

## Final github/shell exercise!
###Creating a shell script and sharing it on github

Now, its time for our final mission of the day! We will work in pairs for this final exercise.
Your objective is to:

1) Create a shell script that provides some information from the gapminder dataset.
2) Add, push, and commit this script to your respective repos.
3) Clone the script onto your local system to perform and track changes done by your collaborator.

Your modifications to the lesson 3 script should be able to:
a) Change the script so it finds countries names that start with 5 consonants of your choosing. 
b) Sort the contents within each file (they should be sorted by year).
c) Capture the entire content of the sorted files onto a single output file.
d) Sort the contents of the file again (by year).
e) Move the script to your Desktop.
e) Comment the script to explain its purpose and what each line of code does.

Make sure to back and ford when collaborating in this script with your partner!

Possible solution:
```bash
for filename in V*.txt R*.txt L*.txt J*txt N*.txt
do
    echo "$filename"
    sort "$filename" >> sorted_consonants.txt
done

sort sorted_consonants.txt >> sorted_sorterd_consonants.txt

mv -i sorted_sorterd_consonants.txt ~/Desktop/
```

# If we still have time: Branching and Forking

## Branching

Branching is an extremely useful tool when working on a project with many people.  Say you or a group were assigned a specific development task on a much larger project.  You know you will not be adding much or anything to the master branch, so it's best if you work in your own space in order to not accidentally tamper with anything on the master branch.  This is called branching.

Continuing in your pair, one of you will create a new branch while the other continues to make changes on the master branch. I will be branching on one of your repositories.

```bash
git branch [branch_name]
```

Check to see what branches are available and where you are located

```bash
git branch
```

To move from branch to branch we use `git checkout`

```bash
git checkout my_branch
```

Now you can start working on your project in the safety of your own branch.  From this point you can add, commit, and push as you would on your own personal repository.  

#### Activity 
Go ahead and create directories, scripts, text files, etc. so that your branch is different form master.  When you are ready add, commit, and push these changes to Github.  Can you find your branch on Github?

### Merging
When the time comes that you have completed your project and wish to share it with the rest of your team you must merge your branch with the desired branch (usually the master branch, but it could be any branch within a large project).

I recommend that you always pull before you begin the merging process to ensure things are up to date.

```bash
git pull
```

A word of advice: It is better to hop on the branch you want to merge with and then merge.  For example, if you made changes to my_branch, and want to merge with master, checkout to master first.  If conflicts arise they should all be changes from your branch.  This means you should recognize these changes and can make better decisions about addressing them.  This is in contrast to merging the master while on my_branch where you may find many conflicts that you had no part of and may not know what to do about them.



```bash
git checkout master [or_branch_to_merge_with]

git merge my_branch
```

You successfully branched from master made changes and merged those changes back to master!  Great job!

## Forking (Github only)

Forking is *not* done in git.  It is a Github function! Forking means you have taken an existing repository and placed an exact copy into your own Github account and repository.  This then allows you to clone this fork to your local machine and make any changes you wish.  For example, you may be interested in a project you are not a part of and have some neat ideas you would like to add.  In this case you would fork the Github repository and clone it to your machine and add the code you think will make the project better. At this point you would add, commit, and push back to your Github remote repository.  When you are ready to share it with the original project you would send a Pull Request.  This request can be confirmed, denied, or the owner of the original repository may ask for edits.  

**Demonstrate within a browser using Github**


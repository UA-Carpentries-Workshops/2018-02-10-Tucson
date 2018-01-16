# Lesson 2

## Working With Data and Version Control

Another benefit to using the command line is the ability to manipulate data files.  This utility can then be compounded by the use of loops, conditionals, and scripting which we will learn about later.  

Usage of the command line also allows us to use a version control application called git.  Version control is a useful tool as it tracks any changes to your files over time.  Imagine one may have several drafts saved of a single manuscript.  With version control we could track the edits made between drafts overtime in a single file.

First we need to acquire the data we will be using today and tomorrow using git.  For this we will clone a repository with `git clone`.  When using any git commands we first call `git` followed by the specific command, `clone` in this case.

Clone the repository containing the gapminder data.
```bash
git clone link
```   
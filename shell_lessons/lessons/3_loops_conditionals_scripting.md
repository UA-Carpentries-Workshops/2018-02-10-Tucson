# Lesson 3

## Looping through multiple files
### Why use loops

Let's start with an question. What would you do if you wanted to change the number of words in a file using the command line?

```bash
wc [filename]
```
What would you do if you wanted to check this number of words in 5 files? What about 500 files? Would you type the same command 500 times just changing the name of the file?

In cases like this, we want to use a loop. A loop is a way of using programming to avoid having to type the same commands over and over again. Loops save tim and make you more efficient! In other words, they are a way of automating a task, whatever it might be. For instance we might like to automate a task for:<br>

a) Modifying the names of a series of files<br>
b) Capturing a certain value across all genes in a genome<br>
c) Converting a given temperature across scales for multiple locations.<br>

*Etherpad question*<br> 
What other examples come to mind?

In a way, we have become familiar with the idea of using the command line to move, copy, observe, etc. several files at the same time. For instance:

*Etherpad question*<br>
Write the command that you would use to find the first two lines in all files with a .txt extension for the gapminder_by_country folder?<br>
Navigate to that folder using `cd` if you find yourself out of it.

Solution: 
```bash
head -n 2 *.txt
```

### What are loops
Loops are key to productivity improvements through automation as they allow us to execute commands repetitively. 
Loops are similar to wildcards and tab completion, using loops reduces the amount of typing (and typing mistakes). 

Now lets try the above example using a loop:

```bash
for filename in Jordan.cc.txt Kenya.cc.txt
do
	head -n 3 $filename
done
```

#### Structure of a for loop

Using the command `for` we can repeat a command (or a group of them) once for each element in a list. 
Each time the loop runs (called an iteration), an item in the list is assigned in sequence to a variable, 
and the commands inside the loop are executed, before moving on to the next item in the list. Inside the loop, 
we call for the variable’s value by putting $ in front of it. The $ tells the shell interpreter to treat a 
given name as a variable and substitute its value on eahc loop's iteration.

Let's breakdown the structure of a for loop:

* `for` (command that starts the loop)
* filename in Jordan.cc.txt Kenya.cc.txt (two items in the filename variable. "filename" can be replaced by any other term) 
* do (indicates the list of commands INSIDE THE LOOP that will run on each iteration) 
* any command desired. In this case we used `head`
* $ (we put $ in front of the variable value to call it)
* done (ends the commands INSIDE THE LOOP)

Now, let's create a loop that prints the last five lines on each file, for any three countries of your choice:

Solution:
```bash
for filename in Jordan.cc.txt Kenya.cc.txt Venezuela.cc.txt Uruguay.cc.txt
do
	tail -n 5 $filename
done
```

Let's create another loop that prints the number of words in ALL files within the gapminder_by_country dataset:

Solution:
```bash
for filename in *.txt
do
	wc $filename
done
```

* What would be the output of the following loops?

```bash
for variable in *.txt
do
	echo $variable
done
```

```bash
for x in *.txt
do
	echo $x
done
```

The output is the same! So: 
* What is different between these loops?
* What does the command "echo" do?
* Why using these types of variable names (x and variable) might be problematic? 


### While loops

An alternative to the "for loop" is the "while loop". A "while loop" tests for a condition at the top of a loop, 
and keeps looping as long as that condition is met. In contrast to the "for loop", the "while 
loop" is used in situations where the number of loop repetitions is not known beforehand.

A simple while loop can be used to count a certain number of iterations:

```bash
digit=1
while [ $digit -le 5 ]
do
  echo "Welcome $digit times"
  digit=$(( $digit + 1 ))
done
```

Let's breakdown the structure of this while loop:

* `while`(command that starts the loop)
* [ $x -le 5 ] (condition to be meet until the loop stops running. $digit assigns the previously defined digit to a variable, -le is a "comparison operator")
* do (indicates the list of commands INSIDE THE LOOP that will run on each iteration) 
* any command desired. In this case we used `echo`
* digit=$(( $digit + 1 )) (adds one to the $x variable)
* done (ends the commands INSIDE THE LOOP)

Note that for comparisons between integers we need to use "a binary comparison operator". 
These operators are used to compare two variables or quantities. In this case, we are running the 
loop until our variable remains less or equal than 5. (Find more details about 
different types of operators here: http://tldp.org/LDP/abs/html/comparison-ops.html)

Let's create another while loop using a different operator:

```bash
digit=10
while [ $digit -ge 5 ]
do
  echo "Welcome $digit times"
  digit=$(( $digit - 1 ))
done
```

The -ge operator allows you to compare your variable to an integer. The "while loop" will run as long as your variable
is lower or equal than five!

Now, let's take a moment to explore how some of the components of the while loop work. Using the first while loop as an 
example, modify the different sections of the loop and see what happens:

* What happens if you change digit=1 for z=1 before starting the loop? Note: do not change "digit" anywhere else in the loop.
* What happens if you eliminate the digit=$(( $digit + 1 )) portion of the loop?

#### Killing an infinite loop

Uh oh! We seem to have created an infinite loop. In the case of while loops, if the conditions to finish the loop
are never met the loop will continue running until the user kills the process. If you find your self in this 
position don't panic! You can end and kill a rogue while loop by pressing the following command on your terminal:

```bash
Ctrl+C
```

## Conditionals

Conditional statements allow us to use our script to specify different courses of action when a certain condition is met. 
The `if` statement is the most widely used conditional. The structure of an `if` conditional is as follows: 

if CONDITION_IS_MET
	then DO_SOMETHING
fi 

When the condition required by the `if` statement is met, the `then` command inside the statement will be executed.
If the condition is not met, then the internal command will not be executed;. `fi` signals the end of the conditional. 
Let's try this by performing a quick binary comparison between two integers 

```bash
integer=1
if [ "$integer" -eq 1 ]
	then echo "$integer is equal to 1"
fi
```

* What happens if the condition is not met? e.g. integer=2

We can add other conditionals to this statement. Besides using the "if/then" comparison we can capture an alternative 
condition by using the `elif` and `else` conditionals. For example, we can built onto the previous code by doing the
following:

```bash
integer=2
if [ "$integer" -eq 1 ]
	then echo "$integer is equal to 1"
elif [ "$integer" -eq 2 ]
	then echo "$integer is equal to 2"
else 
	echo "$integer is different from 1 or 2"
fi
```

* What is the expected output of the following loop?

```bash
integer=32
if [ "$integer" -le 30 ]
	then echo "$integer is lesser or equal than 30"
else
	echo "$integer is greater or equal than 30"
fi
```

* Empty
* 32 is lesser or equal than 30
* 32 is greater or equal than 30

Take a moment to create various if/then statements and familiarize yourself with their structure and usage.


## Conditionals and loops

While loops and conditional statements are interesting and useful on their own, they work really great together.
Loops and conditional can be used to exammine large amounts of data and perform unique processes on them depending 
on if they met a certain criteria. In order to use both of these commands at the same time, you need to keep
track of the structure of your code. Using the gapminder_by_country dataset:

```bash
for filename in U*.txt
do
    if [[ -s "$filename" ]]
    then
        echo "$filename is not empty"
    else
        echo "$filename is empty"
    fi
done
```

## Piping and saving to a file while inside a loop

As you might have figured out, loops are pretty versatile! Using the proper structure, you can include a variety
of commands within the loop. You can even pipe commands within a loop!

```bash
for filename in U*.txt
do
    echo $filename
    head -n 5 $filename | tail -n 3
done
```

Furthermore, by using the ">>" symbol, you can redirect the output from the loop onto a file.

```bash
for filename in U*.txt
do
    echo $filename
    head -n 2 $filename >> output_test.txt
done
```

* What do you expect to find on the output_test.txt file?
* Where is the file located?
* What would happend if you use ">" instead of ">>"?

How would we redirect the file onto another location?

```bash
for filename in U*.txt
do
    echo $filename
    cat $filename >> output_test.txt
done

mv output_test.txt ~/Desktop/
```

Notice that we are using the `mv` command outside/ after our loop is finished. 
* What would happend if we use the `mv` command inside the loop?

## Putting all together, the shell script

Now that we are familiar with some of the properties and capabilities of the shell
we are going to take some commands that we repeat frequently and save them in a file 
so that we can re-run all them later by typing a single command. A file containing a 
series of commands is called a shell script.

We will be using the text editor `nano` to build our shell scripts.

First, we can access `nano` by typing "nano" on the terminal window.

```bash
nano
```

We can type any of the bash commands within the text editor. Let's practice creating a
loop that will capture the name of certain file within the gapminder_by_country dataset
and some information within each file:

```bash
for filename in V*.txt
do
    echo $filename
    head -5 $filename | tail -2 $filename
done
```
Notice that contrary to when we use the terminal, we can type the complete loop inside nano. 
In order to make these command easy to read for the human eye, we will include indentations.

Once you have finished typing, you close nano by pressing Ctrl+X, followed
by Y to indicate that you will like to save the changes made. Use an indicative file name
(remember to avoid using non indicative names for files and/or variables) followed by the ".sh" extension. 
The ".sh" will stands for shell script.

You can further modify the file using nano from the terminal by typing:

```bash
nano V_countries_loop.sh
```  

In order to execute your script, you should type the following in the terminal:

```bash
bash V_countries_loop.sh
```
Executing the script will provide the same results as typing these individual commands in the 
terminal; however, you have the advantage that these commands are compiled and ready to use
with other data.


### Adding comments to your shell script

Adding comments to your script is essencial to secure its future usability and sharing potential.
Without comments, it can be difficult to recall the functions of a given line of code or understand
the scripts shared with collaborator. Thus, it is customary to add comments that explain the 
actions of certain parts of the script.

You can add comments to your script by opening nano.

Comments are marked by the use of the `#` character. They represent something that a HUMAN USER
can read and understand. The computer ignores lines of code preceded by the `#` character.

A commented script looks as follows:

```bash
#Loop through files that start with a V
for filename in V*.txt
do
    echo $filename # Print the file name to the terminal
    head -5 $filename | tail -2  # Pipes the first 5 lines within the file, and prints the last two lines
done
```

Running the updated code will produce the same output as before. However, now our script
is more easy to use by other people as well as our future selfs!

### Using the script with arbitrary files:

Alternatively, we can make our script more versatile by chanding our use of variables. For example,
we can let the user specify which data file they want to use by changing the variable name to "$1".
Inside a shell script, $1 means "the first filename (or other argument) on the command line". 
We can now run our script like this:

```bash
#Runs script with first argument given in the command line
echo "$1"
head -n 5 "$1" | tail -n 2
```

This new shell script can be executed as:

```bash
bash first_argument_sh Italy.cc.txt
```

Now try to execute the shell script with a different argument (country name). Does the script still works
when you try using data from other countries?

Moreover, we can assign variable names to other arguments inside the script in order to
further increase its versatility. For example, we can change hard coded variables in the
head and tail commands as follows:

```bash
#Runs script with first argument given in the command line
echo "$1"
head -n "$2" "$1" | tail -n "$3"
```
$2 means the second argument on the command line and $3 means the third. Now, we can execute
the script as follows:

```bash
bash first_argument_sh Italy.cc.txt 4 1
```
Try running the script while modifying the arguments in the terminal. Does the behaviour
of the script's output changes?

### Debugging the script

Even if we are carefull, it is possible that we make mistakes while writing our script. Running
a script with an error (bug) will results on an empty output in our termina. In order to find
any bugs in our script we need to use the -x flag to run bash in debug mode. Running a script in 
debug more prints out each command as it is run, which will help to locate errors.

 ```bash
bash -x first_argument_sh Italy.cc.txt 4 1
```

### Final shell exercise

Now, we will create a final shell script that works on the gapminder data set. 

Your script should be able to:
a) Loop through the files in the gapminder data set.
b) Find all files that belong to countries names that start with a vowel.
c) Print the name of those files to the command line/terminal.
d) Capture the first two lines of those files to a single output.
e) Move the output file to the Desktop

Possible solution:
```bash
for filename in A*.txt E*.txt I*.txt O*txt U*.txt
do
    echo "$filename"
    head -n 2 "$filename" >> first_line_vowels.txt
done

mv -i first_line_vowels.txt ~/Desktop/
```

## What is Automation?
- Automation means making tasks run automatically without manual work, usually using scripts or tools.

- Automation saves time, reduces errors, and increases efficiency.

## What is shell scripting?
- Shell scripting is writing a set of Linux commands in a file to automate tasks.

## What is the difference between touch and vim?
- touch works in scripts because it runs without user input.
- vim doesn't work in scripts because it needs user interaction (editor opens).

## What is #!?
`#!` is called **shebang**.

It tells the system which interpreter to use to run the script (like `#!/bin/bash`).

## What is #!/bin/bash and #!/bin/sh?
- bash is command line interpreter. Most default CLI in linux 
- sh acts as an linking to the bash. Even though it's sh shell, the scripts are linked to bash shell and executed over there but some distros links sh shell to dash based on their requirements.

## What is Daemon process and Zombie process?

- Daemon Process: A background process that runs continuously without user interaction (e.g., cron, sshd).

- Zombie Process: A dead process that has finished execution but still has an entry in the process table (waiting for parent to read its exit status).

## What are the 3 standard streams in Linux?

- stdin (0) – Standard input (from keyboard or file)
- stdout (1) – Standard output (normal command output)
- stderr (2) – Standard error (error messages)

## What is awk?
# awk
awk is a text-processing tool used to read, split, and manipulate lines in a file or input.

## Basic Syntax
```
awk -F"separator" '{action}'
```

## Example
```
echo "101 Magesh 80" | awk '{print $2}'
```
Output:
```
Magesh
```

# What is  Script Error Handling ?

## set -e
Stops the script on any command failure (non-zero exit).
But in pipelines, only the last command's exit status is checked.

## set -o pipeline
This ensures the pipeline fails if any command in it fails — not just the last one.

# What is curl and wget command ?

- curl --> Transfers data from / to a url. Supports APIs GET , POST , headers
- wget --> Downloads files from URLs. Save content to your system 

# Write s shell script to get two inputs (numbers) from user and determine the greates among them !

read a
read b 

if [ $a -gt $b ]
then
    echo "$a is greater"
else
    echo "$b is greater"
fi

## Write a shell script to print 1 to 100 uisng for loop !

for i in {1..100}
do
    echo "Number :- $i"
done


## What should be used during the arithmetic operations ?

- (( any arithmetic operations ))

## What is signals and trap command ?

- Signals are notifications sent to the process to control or alert them
- Traps are used to catch and handle these signals effectively

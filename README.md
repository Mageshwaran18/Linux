# Ultimate Linux Guide

This repository is created to serve as a revision notes for the YouTube course created by **Abhishek Veeramalla**(`iam-veeramalla` on GitHub) on his youtube channel - `Abhishek.Veeramalla`.

Following topics are covered as part of the course and documentation.

- Fundamentals of Linux
- Linux vs Windows
- Core components of Linux
- Setup Linux on Windows & MacOS
- Linux folder structure
- Linux user management
- Linux file management
- VI Editor shortcuts (commonly used)
- File permissions
- Process management
- Linux system monitoring
- Basic Networking in Linux
- Disk and Storage management in Linux

Please refer to the folders at the root level of this repository to go through the documentation. 

Basic Commands :- 

| Command | Description |
|----------|-------------|
| ls | To list all the folders present in the current directory |
| pwd | To show the path of the current directory |
| which | Full path of the command |
| cat | To display the file content on the Screen |
| echo | Prints text or variable to the Screen |
| apt install vim | to install vim |
| su <username> | Switch to a user |
| whoami | shows the current logged - in username |
| adduser <username> | create a new user |
| groupadd <groupname> | create a new group |

id <username> -->  To identify which group did the user belongs to.
usermod -aG <groupname> <username> --> Add a user to a particular group.
rm -r <fodlername> --> To delete the folder and it's component.
touch <filename> --> To create a file.
ESC + :wq --> To save and exit from a file.
ESC + :q --> To exit from a file but doesn't save the changes made currently.
ESC + :<linenumber> --> Move to a specific line in a file.
echo '<text>' >> <filename> --> Appends the text into the file.
ESC --> To exit from the insert mode to the normal mode in the VIM ( text editor )
ESC + /<pattern> --> To search for a text in the file.

`u` –-> Undo last action  
Ctrl + r –-> Redo an undone change  
    (undo and redo option in vim is available only in the normal mode and not in insert mode)
groupdel <groupname> --> To delete a group



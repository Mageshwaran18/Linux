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
| id <username> | To identify which group did the user belongs to |
| usermod -aG <groupname> <username> | Add a user to a particular group |
| rm -r <fodlername> | To delete the folder and it's component |
| touch <filename> | To create a file |
| ESC + :wq | To save and exit from a file |
| ESC + :q | To exit from a file but doesn't save the changes made currently |
| ESC + :<linenumber> | Move to a specific line in a file |
| echo '<text>' >> <filename> | Appends the text into the file |
| ESC | To exit from the insert mode to the normal mode in the VIM ( text editor ) |
| ESC + /<pattern> | To search for a text in the file |
| u | Undo last action |
| Ctrl + r | Redo an undone change |
| groupdel <groupname> | To delete a group |
| chmod <username>:<usergroup> <filename> | To change the ownership of the file to a newuser |
| chown -R <username>:<groupname> <directory>/ | Change ownership of all files and folders inside a directory |
| chmod +t directory/ | Makes sure that only the owner has the permission to delete or rename the file, even if others have the write access |
| chown -R <newuser>:<newgroup> <directory>/ | Change ownership to the folder and all it's corressponding files |
| ps aux | View running processes with resource utilisation |
| ps aux \| grep <process_name> | To find a particular process |
| kill -9 <PID> | To kill a process |
| pkill -9 <process_name> | To kill all the instance of a process |
| kill -STOP <PID> | To stop a process |
| kill -CONT <PID> | To continue a process |
|`renice -n 10 -p PID` | Lower priority of a process |
|`renice -n -5 -p PID` | Increase priority of a process (requires root) |
| systemctl list-units --type=service | List all the running services |
| `systemctl start\stop <service_name> | Stop\Start the service in a system |
| `htop` | Shows the real time cpu and memory utilization in realtime (can't be used in real time)|
| `free -m` | Shows memory utilization in human readable format and also can be used in the scripts |
| ds -sh dir\dir | Disk utilization for each folder/directory |
| ip a | Displays all IP addresses and network interfaces on the system |
| ss -tulnp | Show active connections and listening ports |
| traceroute hostname | Shows the path (hops) that packets take to reach a hostname |
| ping hostname | To test network connectivity |
| nslookup <hostname> | Tells the IP address of the of the domain by asking to the DNS server |



Important Differences from Directories:

| Permission | Directory | File |
|------------|-----------|------|
| r | List directory contents | Read file contents |
| w | Create/delete files inside | Modify file contents |
| x | Enter directory (cd) | Run file as program |

if  you have rwx permission for s file inside a folder but if you don't have wx for the folder of the file , then you can't execute the file , can't get into the file , can't read the file too.

Each permission has a value:
- Read (`4`), Write (`2`), Execute (`1`).

Default: 755 for directories, 644 for files

To exit from the nano editor :- 
    --> Ctlr + X
    --> Y to save , No to cancel 
    --> Enter 





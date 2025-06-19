Linux is Open Source which means the code is visible to everyone then why it's considered to be more secure ?

    Linux is open source, meaning anyone can see the code, including hackers.But here's why it's still more secure:
    * Thousands of developers constantly review the code.Bugs or vulnerabilities are found and fixed quickly.
    * Users can verify what the OS does—no hidden backdoors.Security flaws are disclosed, not kept secret like in closed-source OS.
    * Admins can remove unwanted services, reducing attack surface.You can harden Linux based on your use case.
    * Linux has a strong permission model (root, user, group).Limits what damage malware can do.

    So yes, code is visible—but so is every mistake, and that actually makes it stronger over time.

What are some of the distributions of Linux ?
     
    Ubuntu --> One of the most beginner-friendly distros, widely used for personal and server use. It has great community support.

    Kali Linux --> Designed for cybersecurity and penetration testing.

    RedHat --> Provides enterprise level linux solutions , focuses more on security , stability , support

From where the packages of linux were installed ?
    
    * A package manager fetches software from official repositories (online storage of packages).
    Example: Ubuntu gets packages from archive.ubuntu.com.

Full form of APT ?

    * Advanced package tools 

Why Should You Run apt update After Installing Ubuntu?
    
    When you install Ubuntu, the packages included in the ISO image might be outdated.
    So we run this command `sudo apt update`


What is root user?
    Root user is a super user who has all the privileges/full control over the system. Manages other users in the system.

What is PATH?
    PATH environment variable — a list of directories the shell checks for commands.
    echo $PATH shows the PATH variable.
    Example output:
    /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
    So when you type a command, Linux looks in these folders to find it.

What is VIM?
    VIM is the text editor in Linux environment.
    Use it to create or edit files in the terminal.
    Basic commands:

    i → insert mode (start typing)

    Esc → exit insert mode

    :w → save

    :q → quit

    :wq → save and quit

    :q! → quit without saving

As a root user can you restore or decrypt the password of a user ?

    No all the passwords are one way encrypted , hence the decryption is not possible.

What is the difference b/w the useradd and adduser ?
    useradd -> A simplest form of creating the user and it's doesn't get many information about the user and doesn't create directory in home directory for the user. Used for running the scripts 

    adduser -> Gets more information about the user while creating the user and also creates the directory in the home directory for the user.

What is SSH client ?
    An SSH client is a tool that lets you connect securely to another machine (like a server) using the SSH protocol.

    It handles:

    * Authentication (e.g., key or password)
    * Encryption of data
    * Remote command execution

    Example:

    * Linux/macOS: built-in `ssh`
    * Windows: `ssh` (via Git Bash or PowerShell), or tools like PuTTY

    

How to connect with the linux server which is in the AWS EC2 ?
    Use  a SSH client ( GIT Bash ) , In git bash move to the directory where your key pair is presented , The run the command in the ssh client command available in the AWS.

What is primary group and secondary group ?
    * Primary group: Default group for the user; used when creating files.
    * Secondary groups: Extra groups a user can belong to for additional access.

    Example:

    ```bash
    id username
    ```

    Shows:

    * `gid=...` → Primary group
    * `groups=...` → All groups (primary + secondary)

What is user management and file permissions ?

    User Management = Creating users & groups

    File Permissions = Controlling what users can read, write, or execute on files/directories

Did Linux comes with the file permissions by default ?

    By default linux provides basic rules so that file permissions is maintained. Example :- You can see the other user directory and the file in the directory . You can also read the content in that file but updating or deleting the file is not permitted. You need permissions for that. 

    You can modify the file permission based on your requirement using the chmod command. 

What happens when a user is created ?
    Default a group with the same name as the user is created. This is called a user private group.

    Why?
        It improves permission handling:

        User gets their own group

        Easier collaboration and access control

        Helps in managing file ownership and sharing

        It's a standard practice in Linux systems for flexibility and security.

In file permissions what does '-rwxr--r-- 1 user group 1234 Mar 28 10:00 myfile.sh' explains ?

    Let’s break down -rwxr--r-- 1 user group 1234 Mar 28 10:00 myfile.sh in depth:

    1️⃣ -rwxr--r--
    This is the file permission string, 1-rwxr--r--0 characters:

    Part	Meaning
    -	File type → - means a regular file
    rwx	Owner's permissions → read, write, execute
    r--	Group's permissions → read-only
    r--	Others' permissions → read-only

    So:

    Owner can read, write, and execute.

    Group can read only.

    Others can read only.

    2️⃣ 1
    This is the hard link count — number of directory entries (links) pointing to this file.

    3️⃣ user
    This is the owner (user) of the file.

    4️⃣ group
    This is the group that owns the file.

    5️⃣ 1234
    This is the file size in bytes.

    6️⃣ Mar 28 10:00
    This is the last modification date and time of the file.

    7️⃣ myfile.sh
    This is the file name

How to create a shell script ?

    --> Create a shell file [ touch file.sh ]
    --> Write a shebang Line and the script
        --> Shebang (#!) is the first line in a script that tells the system which interpreter to use.
        [ #!/bin/bash
          echo "Hello, World!"]
    --> Execute using './file.sh'

Explain --> chmod u=rxw file.sh
        chmod u=rwx <filename>
    Breakdown:
        chmod: Change file permissions.

        u: Refers to user (owner) , o: Refers to other users , g: Refers to groups 

        =: Assign exactly these permissions.

        rwx:

        r = read

        w = write

        x = execute

Consider you have only the execution permission and don't have read permission for shell file , can you execute the file ?
    Even though you have execute permission , they also need read access to read the script content (shell scripts must be readable to be run).

Can I get into other's directory only with the read permission ?
    No, with the help of read permission for a directory you can just list the files in the directory and you can't enter into that directory. Even you can't read the file contents in that directory

    To get into the other's directory you should also need the execute permission for that directory.

    Directory permissions and file permissions are completely independent.
    
Important Differences from Directories:

| Permission | Directory | File |
|------------|-----------|------|
| r | List directory contents | Read file contents |
| w | Create/delete files inside | Modify file contents |
| x | Enter directory (cd) | Run file as program |

# File and Directory Permissions In-Depth

## Directory Permission Requirements
To access any file, you need AT MINIMUM:
- Execute (x) permission on the directory
- Execute (x) permission on ALL parent directories in the path

## Possible Combinations

### 1. Directory: r+x, File: r ✅
```bash
# Directory: 755, File: 644
ls /dir          # ✅ Can list directory
cd /dir          # ✅ Can enter directory  
cat /dir/file    # ✅ Can read file
```

### 2. Directory: r+x, File: no read ❌
```bash
# Directory: 755, File: 600 (you're not owner)
ls /dir          # ✅ Can list directory
cd /dir          # ✅ Can enter directory
cat /dir/file    # ❌ Permission denied - no file read permission
```

### 3. Directory: x only, File: r ✅ (if you know filename)
```bash
# Directory: 711, File: 644
ls /dir          # ❌ Cannot list directory contents
cd /dir          # ✅ Can enter directory
cat /dir/file    # ✅ Can read file (if you know the exact name)
```

### 4. Directory: r only, File: r ❌
```bash
# Directory: 644, File: 644
ls /dir          # ✅ Can see filenames
cd /dir          # ❌ Cannot enter directory
cat /dir/file    # ❌ Cannot access file path [ To reach the file you should go through the directory but you don't even has the permission to enter into the directory then how it possible to reach the file ]
```

### 5. Directory: w+x, File: r ✅
```bash
# Directory: 733, File: 644
ls /dir          # ❌ Cannot list contents
cd /dir          # ✅ Can enter directory
cat /dir/file    # ✅ Can read file (if you know name)
rm /dir/file     # ✅ Can delete file (directory write permission!)
```

## Key Insights
- Directory execute (x) is mandatory - without it, you cannot access any files inside, regardless of file permissions.
- Dangerous combination: Directory w+x, File read-only
- You can delete files even if you can't read them!
- Directory write permission overrides file permissions for deletion

## Stealth Access: Directory x only
- Can access files if you know exact names
- Cannot discover what files exist
- Useful for "hidden" file sharing
# Linux Command Line Basics

## What is sudo?  
🔹 **sudo (Super User DO)**  
- Allows a normal user to run commands with superuser (root) privileges  
- It asks for your password, not root's  
- Commonly used for admin tasks (e.g., install software, modify system files)  

Example:
```bash
sudo apt update
```
Runs the apt update command as root.

## What is bash?  
🔹 **bash (Bourne Again SHell)**  
- A command-line interpreter (shell)  
- It reads your commands and executes them  
- Supports scripting (loops, variables, functions)  
- Most common default shell in Linux  

Example:
```bash
#!/bin/bash
echo "Hello"
```
This script runs with bash.

## What is su?  
🔹 **su (Substitute User or Switch User)**  
- Lets you switch to another user, usually root  
- By default: su = switch to root  
- It asks for the target user's password  

Example:
```bash
su
```
Switches to root (you need the root password).

## What is -l?  
🔹 **-l (Login shell)**  
- Used with su or bash  
- Gives a login environment, like when you log in freshly  
- Loads user's profile files (.bash_profile, .profile)  

Example:
```bash
su -l username
```
Switches to username with a full login environment.

## What is | and why it's used for?  
🔹 **| (Pipe)**  
- Sends output of one command as input to another  
- Used to combine commands  

Example:
```bash
ls | grep file
```
Lists files and filters those with the word file.


## What is the sudoers file?
🔹 **The sudoers file**
- It's a configuration file that controls who can use sudo and what commands they can run.

## What is apt?
🔹 **apt (Advanced Package Tool)**
- Used for: Installing, updating, and removing software on Debian-based Linux (like Ubuntu).

## Why sudo su doesn't ask root password, but su does?
🔹 **sudo su vs su**

✅ **sudo su**
- Uses your own password
- You're authorized via sudoers file
- Once verified, it switches to root without asking root's password

🔒 **su**
- Tries to switch directly to root
- Needs root's actual password

✅ **So:**
- sudo su = You're trusted via sudo
- su = You must know root's password

## What is the difference between ps aux and ps ef and ps ec?
| Command  | Style | Shows                                                |
| -------- | ----- | ---------------------------------------------------- |
| `ps aux` | BSD   | All processes + resource usage                       |
| `ps -ef` | UNIX  | All processes + full info (PPID, time, full command) |
| `ps -ec` | UNIX  | All processes + only command name                    |

## What is the difference between the process and the services?

🔧 **Process**
- Definition: A process is any instance of a program that is being executed
- Started by: A user or the system
- Runs in: User mode or system mode
- Lifetime: Exists as long as the program runs
- Visibility: Usually visible in the task manager or process list (e.g., ps on Linux, Task Manager on Windows)
- Examples: Opening a web browser, running a Python script, launching a video game

🛎️ **Service**
- Definition: A special kind of process designed to run in the background, often without user interaction
- Started by: Automatically by the operating system or manually by a user/admin
- Runs in: Typically system mode
- Lifetime: May run continuously in the background even without user login
- Managed by: Service managers like systemd (Linux), services.msc (Windows)
- Examples: Print spooler, web server (Apache/Nginx), database service (MySQL)

## How to kill a process in interactive mode [ top ]?
- Press k and enter the process to kill the process in the interactive mode


## What is Grafana and Prometheus ?
    These are used for monitoring the linux system. 
    
    Prometheus --> An open-source monitoring and alerting tool.It collects metrics from targets (like servers, apps) at regular intervals.Stores data in a time-series database.Can trigger alerts using rules (with Alertmanager).

    Grafana --> A visualization tool.Connects to data sources like Prometheus, InfluxDB, etc.Builds interactive dashboards with graphs, gauges, tables.

## What are steps involved in the monitoring of the system using the prometheus and grafana ?
    Prometheus is connected to the linux system and the prometheus collects all the metrics about the linux system using the node exporter (data about system utilisation etc ) and prometheus will act as data source to  the grafana , where grafana visualizes the collected data and based on that it uses Alert manager to  send  a alert message to the administrater as email or slack message

## What are the file systems available in linux ?

    ext :- 
    Family of file systems: ext2, ext3, ext4

    ext4 is widely used in Linux (default in Ubuntu)

    Supports journaling (ext3/4), large files, and better performance

    Good for general-purpose Linux usage`

    XFS :- 
    High-performance file system for large files and parallel I/O

    Supports journaling, snapshots, defragmentation

    Common in Red Hat-based systems (RHEL, CentOS, Amazon Linux)

## What are the steps involved in adding the extra volume to the linux system in AWS ?

    * Attach a EBS to the instance [make sure that the ebs falls under the same availability zone of the instance]

    * After attachment note the name of the volume added ex:- xvdf

    * After attachement you can't directly use that storage , the attached volume is a block storage , hence they need to be partitioned(optional)-->then  formated  --> then mounted. Then the attached volume is available for the usage

    * Create a directory for the new volume in /mnt/
    `mkdir -p /mnt/<dir_name>`
    `mkdir -p /mnt/demo_vol`
    -p -->Creates parent directories as needed
    (avoids error if intermediate directories don’t exist)

    * Format the block storage based on the file system type 
    `mkfs -t ext4 /dev/<name_volume_added>` i.e :- xvdf
    `mkfs -t ext4 /dev/xvdf`
    
    -t ext4: Specifies the type as ext4 (a common Linux file system)

    /dev/xvdf: The raw block device (e.g., a new EBS volume in AWS)

    * Now mount the device to the mount point 

    `mount /dev/<new_volume_added> /mnt/<dir_name>`
    `mount /dev/xvdf /mnt/demo_vol`
    
    mount: Command to attach a file system to the Linux directory tree

    /dev/xvdf: The device you want to mount

    /mnt/demo_vol: The directory where it will be mounted

## Why DevOps Engineers need shell scripting ?

- For automated backups 
- For monitoring and maintaining the log files 
- Package installation 
- Clean up old files 













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

In file permissions what does ' 1 user group 1234 Mar 28 10:00 myfile.sh' explains ?

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


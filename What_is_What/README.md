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
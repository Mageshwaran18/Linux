# User Management in Linux

## Introduction to User Management in Linux
Linux is a multi-user operating system, meaning multiple users can operate on a system simultaneously. Proper user management ensures security, controlled access, and system integrity. 

Why the user management is required? 
Consider I have 4 users and if I gave all the users root user credentials, in later time if the system is corrupted then I can't find who made the mistake. This leads to less accountability of the user.

Key files involved in user management:
- `/etc/passwd` – Stores user account details.
- `/etc/shadow` – Stores encrypted user passwords.
- `/etc/group` – Stores group information.
- `/etc/gshadow` – Stores secure group details.

## Creating Users in Linux
To create a new user in Linux, use:

### `useradd` Command (For most Linux distributions)
```bash
useradd username
```
This creates a user without a home directory.

To create a user with a home directory:
```bash
useradd -m username
```

## Managing User Passwords
To set or change a user’s password:
```bash
passwd username
```

To specify a shell:
```bash
useradd -s /bin/bash username
```

### `adduser` Command (For Debian-based systems)
```bash
adduser username
```
This is an interactive command that asks for a password and additional details.



### Enforcing Password Policies
- **Password expiration**: Set password expiry days
  ```bash
  chage -M 90 username
  ```
- **Lock a user account**: Locks the user account — it doesn't change the password but disables login by putting a ! in front of the password hash.User is blocked from logging in, but files and settings stay safe.
  ```bash
  passwd -l username
  ```
- **Unlock a user account** : Unlocks the user account that was locked with -l.It removes the ! from the password hash, allowing the user to log in again.
  ```bash
  passwd -u username
  ```

## Modifying Users
Modify an existing user with `usermod`:
- Change the username:
  ```bash
  usermod -l new_username old_username
  ```
- Change the home directory:
  ```bash
  usermod -d /new/home/directory -m username
  ```
  -m Moves all files from old home to new home

- Change the default shell:
  ```bash
  usermod -s /bin/zsh username
  ```

## Deleting Users
To remove a user but keep their home directory:
```bash
userdel username
```
To remove a user and their home directory:
```bash
userdel -r username
```
## Working with Groups
### Creating Groups
```bash
groupadd groupname
```
```bash
cat /etc/group
```
* Returns default list of default groups <br>
* groupname:x:<groupId>:<users_in_the_group> <br>

### To delete a group
```bash
groupdel <groupname>
```

### Adding Users to Groups
```bash
usermod -aG groupname username
```

### Viewing Group Memberships
```bash
groups username
```

### Changing Primary Group
```bash
usermod -g new_primary_group username
```
* Removes the user from their old primary group and sets a new one.<br>
* It only changes the primary group, not the secondary groups.<br>

## Sudo Access and Privilege Escalation
### Adding a User to Sudo Group
On Debian-based systems:
```bash
usermod -aG sudo username
```
On RHEL-based systems:
```bash
usermod -aG wheel username
```

### Granting Specific Commands with Sudo
Edit the sudoers file:
```bash
visudo
```
Then add:
```bash
username ALL=(ALL) NOPASSWD: /path/to/command
```

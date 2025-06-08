# Understanding the Folder Structure

### Explanation of System Directories

### **Symbolic Links (Less Significant)**
| Directory | Description |
|-----------|-------------|
| `/sbin -> /usr/sbin` | System binaries for administrative commands (linked to `/usr/sbin`).<br>Ex:-  Contains shutdown binary file which is responsible for shutting and restart of the machine. Which requires root user privileges.|
| `/bin -> /usr/bin` | Essential user binaries (linked to `/usr/bin`). |
| `/lib -> /usr/lib` | Shared libraries and kernel modules (linked to `/usr/lib`). |

### **Important System Directories**
| Directory | Description |
|-----------|-------------|
| `/boot` | Stores files needed for booting the system (not relevant in containers). |
| `/usr` | Contains most user-installed applications and libraries. |
| `/var` | Stores logs, caches, and temporary files that change frequently.Third party libraries |
| `/etc` | Stores system configuration files.Similar to the C: drive in the windows machine. <br> • It also contains os-release which tells all the details about the os which is being installed and used. |

### **User & Application-Specific Directories**
| Directory | Description |
|-----------|-------------|
| `/home` | Default location for user home directories.<br>• User `alice` → `/home/alice`<br>• User `bob` → `/home/bob`<br>• Each user has their own space in `/home`<br>• If you're alice, you can't access /home/bob unless:<br>  - bob gives you read/execute permissions<br>  - You're root user (who can access everything)<br>• The root user's home directory is /root, not inside /home<br>• Regular users have home directories under /home, but root has its own special location |
| `/opt` | Used for installing optional third-party software. Points:<br>• If you install software in your home directory (like /home/yourname/myapp), it's usually only accessible to you<br>• Unless you change permissions or add it to system-wide PATH<br>• By default, other users can't access it<br>• If a third-party app is installed in /opt, it's system-wide and can be accessed by all users, based on permissions set for that folder or app |
| `/srv` | Holds data for services like web servers (rarely used in containers). |
| `/root` | Home directory for the root user. |

### **Temporary & Volatile Directories**
| Directory | Description |
|-----------|-------------|
| `/tmp` | Temporary files (cleared on reboot). |
| `/run` | Holds runtime data for processes. |
| `/proc` | Virtual filesystem for process and system information. |
| `/sys` | Virtual filesystem for hardware and kernel information. |
| `/dev` | Contains device files (e.g., `/dev/null`, `/dev/sda`). |

### **Mount Points**
| Directory | Description |
|-----------|-------------|
| `/mnt` | Temporary mount point for external filesystems.Such as Disks  |
| `/media` | Mount point for removable media (USB, CDs). |
| `/data` | Likely your **mounted volume** from Windows (`C:/ubuntu-data`). |
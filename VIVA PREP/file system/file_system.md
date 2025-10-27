## 🚀 1️⃣ Introduction

The **Linux File System** is not just storage — it’s an organized ecosystem.  
Every file, command, and device has its *address* here.  
You don’t just “save files” — you place them inside a **well-structured hierarchy** 🏗️  

🧭 **Hierarchy Flow:**

```

/ (root)
├── bin
├── etc
├── home
├── var
├── usr
├── tmp
└── dev

````

---

## 🧩 2️⃣ Understanding the Root `/` Directory

| Directory | Description | Example Content |
|------------|--------------|----------------|
| `/bin` | Essential user binaries | `ls`, `cat`, `cp` |
| `/sbin` | System admin binaries | `ifconfig`, `reboot` |
| `/etc` | Configuration files | `passwd`, `hosts` |
| `/home` | User directories | `/home/drishti` |
| `/root` | Root user home directory | — |
| `/var` | Variable data (logs, cache) | `/var/log/syslog` |
| `/tmp` | Temporary files | Installer temp data |
| `/usr` | User programs and docs | `/usr/bin`, `/usr/share` |
| `/dev` | Device files | `/dev/sda1` |
| `/mnt` | Temporary mounts | USB or ISO mounts |
| `/media` | Auto-mount removable devices | `/media/usb` |
| `/boot` | Boot loader files | `vmlinuz`, `grub` |
| `/proc` | Kernel & process info (virtual FS) | `/proc/cpuinfo` |
| `/sys` | System hardware info | `/sys/class/net` |

💬 *Tip:* You can explore any of these safely using `ls /directory_name`  

---

## 🧠 3️⃣ Paths – Absolute vs Relative

| Type | Description | Example |
|------|--------------|----------|
| **Absolute Path** | Starts from root `/` | `/home/drishti/Desktop` |
| **Relative Path** | Based on current directory | `../Documents` |

📜 *Navigation Commands:*

| Command | Purpose | Example |
|----------|----------|----------|
| `pwd` | Show current directory | — |
| `cd /home` | Go to absolute path | — |
| `cd ..` | Go one directory up | — |
| `cd -` | Go to previous directory | — |

💡 *Pro Tip:* Combine `pwd` + `cd` = best friends for navigation 🧭  

---

## 🪄 4️⃣ File Types & Identification

| Type | Symbol (ls -l) | Example |
|------|----------------|----------|
| Regular file | `-` | `-rw-r--r-- file.txt` |
| Directory | `d` | `drwxr-xr-x folder` |
| Symbolic link | `l` | `lrwxrwxrwx link -> file` |
| Block device | `b` | `/dev/sda` |
| Character device | `c` | `/dev/tty` |
| Pipe | `p` | Named pipe files |
| Socket | `s` | Communication sockets |

🧩 *Check file type:*
```bash
file filename
````

💬 *Tip:* `ls -l` tells the whole story — permissions, type, owner, and size 📄

---

## 🔗 5️⃣ Hard Link vs Soft Link

| Feature                    | Hard Link              | Soft Link            |
| -------------------------- | ---------------------- | -------------------- |
| Inode                      | Same inode as original | Different inode      |
| Works after file deletion? | ❌ No                   | ✅ Yes                |
| Cross filesystem?          | ❌ No                   | ✅ Yes                |
| Command                    | `ln file1 file2`       | `ln -s file1 link1`  |
| Identified by              | No arrow               | Arrow `→` in `ls -l` |

💬 *Pro Tip:* Soft links = shortcuts, Hard links = mirror copies 🔍

---

## 📊 6️⃣ Disk Usage & Monitoring

| Command         | Description              | Example                |
| --------------- | ------------------------ | ---------------------- |
| `df -h`         | Shows disk space usage   | `df -h`                |
| `du -sh folder` | Folder size summary      | `du -sh /home/drishti` |
| `lsblk`         | Lists block devices      | `lsblk`                |
| `mount`         | Displays mounted devices | `mount`                |
| `umount`        | Unmount device           | `sudo umount /mnt`     |

💡 *Pro Tip:* Combine with `grep` to quickly find your drive info

```bash
df -h | grep sda
```

---

## 🧱 7️⃣ File Permissions Recap

| Symbol | Meaning | Numeric |
| ------ | ------- | ------- |
| `r`    | Read    | 4       |
| `w`    | Write   | 2       |
| `x`    | Execute | 1       |

🧩 *Example:*
`-rwxr-xr--` → Owner: all access, Group: read+execute, Others: read only.
Command:

```bash
chmod 754 file.sh
```

💬 *Tip:* Master `chmod` = unlock total file control 🔐

---

## 🧰 8️⃣ Mounting, Unmounting & Partitions

| Command                     | Purpose                | Example |
| --------------------------- | ---------------------- | ------- |
| `sudo mount /dev/sdb1 /mnt` | Mount USB or partition | —       |
| `sudo umount /mnt`          | Unmount device         | —       |
| `lsblk`                     | List all disks         | —       |
| `blkid`                     | Show UUID of drives    | —       |
| `fdisk -l`                  | View partition table   | —       |

📜 *Flow:*

```
Identify drive → Mount → Access files → Unmount safely
```

💬 *Tip:* Always unmount before removing USB drives to avoid corruption ⚠️

---

## 📂 9️⃣ Searching & Managing Files

| Command  | Purpose                     | Example                    |
| -------- | --------------------------- | -------------------------- |
| `find`   | Search by name/type         | `find /home -name "*.txt"` |
| `locate` | Quick search using database | `locate config`            |
| `grep`   | Search within files         | `grep "root" /etc/passwd`  |
| `tree`   | Display directory structure | `tree /home`               |

💡 *Pro Tip:* Use `sudo updatedb` before using `locate` if it gives no result.

---

## 🧩 🔟 Mini Viva Practice

| ❓ Question                             | 💡 Hint                   |
| -------------------------------------- | ------------------------- |
| What’s the root directory in Linux?    | `/` (top of hierarchy)    |
| Difference between `/bin` and `/sbin`? | User vs System binaries   |
| Where are configuration files stored?  | `/etc`                    |
| What is `/proc` used for?              | Kernel & process info     |
| Difference between hard & soft link?   | Inode sharing vs Shortcut |
| How to check your current directory?   | `pwd`                     |
| How to check disk usage?               | `df -h` or `du -sh`       |

---

## ✨ 11️⃣ Drishti’s Quick Recap Sheet 🧾

| Category    | Commands                   |
| ----------- | -------------------------- |
| Navigation  | `pwd`, `cd`, `ls`, `tree`  |
| Permissions | `chmod`, `chown`           |
| Disk        | `df -h`, `du -sh`, `lsblk` |
| Links       | `ln`, `ln -s`              |
| Search      | `find`, `locate`, `grep`   |
| Mounting    | `mount`, `umount`, `fdisk` |

🧠 *Memory Trick:*

> **“NPDLSM” → Navigation, Permissions, Disk, Links, Search, Mount = File System Flow!”** 🌲

---

> 💬 *Final Note:*
> Mastering the file system is like **knowing your city map** — once you know where everything lives, you can find or fix anything.
> 🧩 *“Understand the structure, and Linux becomes your second home.”* – Drishti Sharma 💻

```

---

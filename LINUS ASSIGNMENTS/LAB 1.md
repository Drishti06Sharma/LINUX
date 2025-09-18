✌𝓞𝓑𝓙𝓔𝓒𝓣𝓘𝓥𝓔✌

# 🐧 Ultimate Guide to Essential Linux Commands 🚀
# 

---

## 1. 📂 `pwd` – Print Working Directory

> *“Where am I right now?”*  
Shows the **absolute path** of the current directory you are working in — super useful to avoid getting lost!

![vu](../images/gif.png)

```bash
pwd
````

**Example output:**


/home/drishti


### PICTORIAL REPRESENTATION 📷

![c](../images/pwd.png)


## 2. 📋 `ls` – List Directory Contents

> *“Show me what’s here!”*
> Lists all files and folders in the current directory. You can tweak it to show hidden files, detailed info, and more.

![jhj](../images/gif2.png)

```bash
ls           # Basic list of files
ls -l        # Long list: shows permissions, owners, file size, and modification dates
ls -a        # Show hidden files (those starting with a dot “.”)
ls -la       # Combination of hidden and detailed files.
```

### PICTORIAL REPRESENTATION 📷

* ls *
![vtu](../images/ls.png)


* ls -l *
![ui](../images/ls-l.png)


* ls -a *
![vut](../images/ls-a.png)


* ls -la *
![vd](../images/ls-la.png)



---

## 3. 📁 `cd` – Change Directory

> *“Take me somewhere else!”*
> Move between directories — the backbone of navigating your file system.

![vyi](../images/gif3.png)

```bash
cd                   # goes back to main
cd ~                 # Shortcut to your home directory
cd ..                # Move up one level
cd -                 # Go back to the previous directory
```

### PICTORIAL REPRESENTATION 📷

![bhi](../images/cd.png)



> 💡 **Shortcut:** Use `cd` alone to jump home. Handy for quick resets!

---

## 4. 🆕 `mkdir` – Make Directory

> *“Let’s create a new folder!”*
> Make a new directory to organize your files.


```bash
mkdir linuxlab
```

### PICTORIAL REPRESENTATION 📷

![ou](../images/mkdir.png)



---

## 5. 📝 `touch` – Create or Update File Timestamp

> *“Make a file or update its clock”*
> Create an empty file or update an existing file’s “last modified” timestamp.

```bash
touch abc.txt
```
### PICTORIAL REPRESENTATION 📷

![biy](../images/touch.png)


---

## 6. 📄 `cp` – Copy Files and Directories

> *“Duplicate this!”*
> Make a copy of files or whole directories.

![ hj](../images/gif4.png)

```bash
cp source.txt dest.txt               # Copy a single file
cp -r source_folder/ dest_folder/    # Recursively copy folders
cp -i file.txt backup/               # Interactive mode: asks before overwrite
```
### PICTORIAL REPRESENTATION 📷

![bui](../images/cp.png)


## 7. 🚚 `mv` – Move or Rename Files

> *“Move it or rename it!”*
> Move files to a new location or rename them.

```bash
mv oldname.txt newname.txt           # Rename a file
mv file.txt /path/to/destination/    # Move file to another folder
```
### PICTORIAL REPRESENTATION 📷

![oub](../images/mv.png)

---

## 8. 🗑️ `rm` – Remove Files and Directories

> *“Delete, but be careful!”*
> Delete files or folders permanently — no recycle bin here!

![iu](../images/rm.png)

```bash
rm file.txt                         # Remove a file
rm -r folder/                      # Recursively delete folder and contents
```

### PICTORIAL REPRESENTATION 📷

![biy](../images/rm-r.png)

---

## 9. 📖 `cat` – Display File Contents

> *“Show me what’s inside!”*
> Read and output the entire content of a file.

![Reading](https://media.giphy.com/media/xT0xeJpnrWC4XWblEk/giphy.gif)

```bash
cat abc.txt
```
### PICTORIAL REPRESENTATION 📷

![bo](../images/cat.png)


> 💡 **Pro tip:** Use `cat file1 file2 > combined` to concatenate files.

---

## 10. ✍️ `nano` – Terminal Text Editor

> *“Edit your files directly in the terminal!”*
> Simple, beginner-friendly text editor in your terminal.

![Writing](https://media.giphy.com/media/3o7aCTfyhYawdOXcFW/giphy.gif)

```bash
nano file.txt
```

### PICTORIAL REPRESENTATION 📷

![biu](../images/nano1.png)



![vy8](../images/nano.png)

> 🔑 Save with `Ctrl + O`, exit with `Ctrl + X`, and get help with `Ctrl + G`.

---

## 11. 🗣️ `echo` – Print Text or Write to Files

> *“Say it loud!”*
> Print a line of text or write it into a file.


```bash
echo "Hello, World!"                # Display message on screen
```
### PICTORIAL REPRESENTATION 📷

![vut](../images/echo.png)

> 💡 **Use in scripts** to output messages or create files quickly.

---

## 12. 👤 `whoami` – Show Current User

> *“Who’s there?”*
> Shows which user account you are currently using.

![Who am I?](https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif)

```bash
whoami
```

### PICTORIAL REPRESENTATION 📷

![vuy](../images/echo.png)
---

## 13. 📚 `man` – Manual Pages

> *“Need help? Check the manual!”*
> View detailed help and documentation for commands.

![Reading manual](https://media.giphy.com/media/xT9IgzoKnwFNmISR8I/giphy.gif)

```bash
man ls
```

### PICTORIAL REPRESENTATION 📷


![bu](../images/echo.png)


---

## 14. 🔐 `chmod` – Change File Permissions

> *“Who can do what?”*
> Control read, write, and execute permissions on files and folders.

![bjo](../images/gif7.png)

```bash
chmod 007 linux.txt         # others full access
chmod 402 linux.txt         # Owner read , Others write
chmod u+x linux.txt         # Owner dan execute
chmod o=r linux.txt         # Others read
```

> 🔍 **Permissions breakdown:**

| Digit | Permissions                |
| ----- | -------------------------- |
| 7     | Read, write, execute (rwx) |
| 6     | Read, write (rw-)          |
| 5     | Read, execute (r-x)        |
| 4     | Read only (r--)            |

---

| Permission | Meaning                                          |
| ---------- | ------------------------------------------------ |
| **r**      | Read – can view contents                         |
| **w**      | Write – can modify                               |
| **x**      | Execute – can run (files) or enter (directories) |

---

| User Type  | Meaning                    |
| ---------- | -------------------------- |
| **Owner**  | The user who owns the file |
| **Group**  | Users in the file's group  |
| **Others** | Everyone else              |

---

| Permission  | Numeric Value |
| ----------- | ------------- |
| read (r)    | 4             |
| write (w)   | 2             |
| execute (x) | 1             |
 
---

| Numeric | Permission | Explanation                    |
| ------- | ---------- | ------------------------------ |
| 7       | rwx        | read + write + execute (4+2+1) |
| 6       | rw-        | read + write (4+2)             |
| 5       | r-x        | read + execute (4+1)           |
| 4       | r--        | read only                      |
| 0       | ---        | no permissions                 |

---

# Symbolic mode (using letters)

You can also set permissions with letters:

u = user (owner)
g = group
o = others
a = all (user, group, others)

* And operators: *

+ add permission
- remove permission
= set exact permission


### PICTORIAL REPRESENTATION 📷


```chmod 007 linux.txt         # others full access ```

![iuv](../images/007.png)

```chmod 402 linux.txt         # Owner read , Others write```

![iug](../images/402.png)

```chmod u+x linux.txt         # Owner dan execute```

![ibi](../images/ux.png)

```chmod o=r linux.txt         # Others read```

![ui](../images/or.png)


## 15. 👥 `chown` – Change Owner and Group

> *“Who owns this?”*
> Change ownership of files and directories (usually requires `sudo`).

![ kj](../images/gif8.png)

```bash
sudo chown username:group file.txt
sudo chown -R user:group /path/to/folder  # Recursive ownership change
```

> 💡 **Tip:** Useful for fixing permission issues or when transferring files between users.



### PICTORIAL REPRESENTATION 📷

![vyu](../images/chown1.png)

![uv](../images/chown2.png)

---


⁉️ ADDITIONAL QUESTIONS


🤔 WHAT IS THE DIFFRENCE BETWEEN CHOWN AND CHMOD?

| Command | Purpose                            | What it Changes              |
|---------|----------------------------------|-----------------------------|
| `chown` | Change **owner** and **group**   | Who **owns** the file       |
| `chmod` | Change **permissions**            | What **actions** are allowed (read, write, execute) |

**In short:**  
- `chown` = who owns the file  
- `chmod` = what can be done with the file


🤔 HOW DO YOU CHECK CURRENT DIRECTORY AND USER?

![EE](../images/GIF.png)

- We can check current directory through *pwd* command..
- We can check user through *whoami* command.



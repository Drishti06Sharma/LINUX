## 🚀 1️⃣ Introduction  

Shell scripting is how you **teach Linux to work for you**.  
From automating daily tasks to configuring entire systems, a shell script can make your workflow *smart and repeatable* 🔁  

🧭 **Concept Flow:**  

```

Command → Script → Execute → Automate → Schedule

````

---

## 📜 2️⃣ Basics of Shell Scripting  

| Concept | Explanation | Example |
|----------|--------------|----------|
| Script File | Text file with Linux commands | `nano script.sh` |
| Shebang (`#!`) | Specifies interpreter | `#!/bin/bash` |
| Execution | Run your script | `bash script.sh` or `./script.sh` |
| Comments | For documentation | `# This is a comment` |

💬 *Tip:*  
Always give execute permission before running → `chmod +x script.sh`

🧩 *Simple Script Example:*  
```bash
#!/bin/bash
echo "Hello, $USER 👋"
echo "Today’s date: $(date)"
````

---

## 🔣 3️⃣ Variables

| Type                 | Example                  | Description                      |
| -------------------- | ------------------------ | -------------------------------- |
| User-defined         | `name="Drishti"`         | Stores string/value              |
| System variable      | `$HOME`, `$USER`, `$PWD` | Predefined environment variables |
| Command substitution | `now=$(date)`            | Stores command output            |

💬 *Tip:*
Access variables using `$varname` (without space).

🧩 Example:

```bash
#!/bin/bash
name="Drishti"
echo "Welcome, $name!"
```

---

## 🔁 4️⃣ Conditional Statements

| Statement | Description                | Example                                                        |
| --------- | -------------------------- | -------------------------------------------------------------- |
| `if`      | Executes if condition true | `if [ $x -gt 10 ]; then echo "Big"; fi`                        |
| `if-else` | Two-way decision           | `if [ $age -ge 18 ]; then echo "Adult"; else echo "Minor"; fi` |
| `elif`    | Multiple conditions        | `elif [ $mark -ge 90 ]; then echo "A+"; fi`                    |

💬 *Pro Tip:* Always add spaces inside brackets `[ ]` for conditions!

🧩 Example:

```bash
#!/bin/bash
read -p "Enter number: " n
if [ $n -gt 0 ]; then
  echo "Positive"
else
  echo "Negative"
fi
```

---

## 🔄 5️⃣ Loops

| Type    | Syntax                              | Example                                         |
| ------- | ----------------------------------- | ----------------------------------------------- |
| `for`   | `for var in list; do ...; done`     | `for i in 1 2 3; do echo $i; done`              |
| `while` | `while [ condition ]; do ...; done` | `while [ $i -le 5 ]; do echo $i; ((i++)); done` |
| `until` | Loop until condition true           | `until [ $n -eq 0 ]; do ((n--)); done`          |

💬 *Tip:*
Use loops for backups, renaming files, or batch processing.

🧩 Example:

```bash
#!/bin/bash
for file in *.txt
do
  echo "Processing $file..."
done
```

---

## 📥 6️⃣ Taking Input & Output

| Task       | Command         | Example              |
| ---------- | --------------- | -------------------- |
| Take input | `read variable` | `read name`          |
| Display    | `echo`          | `echo "Hello $name"` |

🧩 Example:

```bash
#!/bin/bash
read -p "Enter your name: " user
echo "Welcome, $user!"
```

💬 *Pro Tip:*
`read -p` lets you take input in a single line for interactive scripts 🧠

---

## ⚙️ 7️⃣ Functions

| Command    | Description           | Example                              |
| ---------- | --------------------- | ------------------------------------ |
| `function` | Define reusable block | `function greet() { echo "Hello"; }` |
| Call       | Execute function      | `greet`                              |

🧩 Example:

```bash
#!/bin/bash
greet() {
  echo "Hi, $1! Welcome 💻"
}
greet Drishti
```

💬 *Tip:*
Functions help keep your script modular and neat ✨

---

## 🕒 8️⃣ Scheduling & Automation

| Command      | Purpose                   | Example                             |           |
| ------------ | ------------------------- | ----------------------------------- | --------- |
| `crontab -e` | Schedule script execution | `0 9 * * * /home/drishti/backup.sh` |           |
| `crontab -l` | View scheduled jobs       | `crontab -l`                        |           |
| `at`         | Run one-time task         | `echo "bash /home/script.sh"        | at 18:00` |

💬 *Pro Tip:*
Use cron jobs for backups, cleanups, and reminders 🗓️

🧩 *Flow:*

```
Create script → Test → Schedule with cron → Verify logs
```

---

## 🧩 9️⃣ Real-World Scenario

**Situation:**
You want your system to automatically clean `/tmp` every day at 10 AM 🧹

**Solution Script:**

```bash
#!/bin/bash
echo "Cleaning temp files..."
rm -rf /tmp/*
echo "Cleaned at $(date)" >> /home/drishti/cleanup.log
```

**Automation:**

```bash
crontab -e
0 10 * * * /home/drishti/cleanup.sh
```

💬 *Result:* Temp folder auto-cleans daily 🧼

---

## 🎯 🔟 Mini Viva Practice

| ❓ Question                                     | 💡 Hint                                     |
| ---------------------------------------------- | ------------------------------------------- |
| What is a shell?                               | Command interpreter between user and kernel |
| How to make a script executable?               | `chmod +x script.sh`                        |
| How to pass arguments in shell scripts?        | `$1`, `$2`, etc.                            |
| How to take input from user?                   | `read variable`                             |
| What’s the difference between `sh` and `bash`? | `bash` = enhanced Bourne shell              |
| How to schedule a task?                        | `crontab`                                   |

---

## ✨ 11️⃣ Drishti’s Quick Recap 🧾

| Category   | Commands                 |
| ---------- | ------------------------ |
| Basics     | `#!`, `echo`, `chmod +x` |
| Variables  | `$name`, `$HOME`, `$PWD` |
| Condition  | `if`, `elif`, `else`     |
| Loops      | `for`, `while`, `until`  |
| Functions  | `function name() {}`     |
| Automation | `crontab`, `at`          |

🧠 *Memory Trick:*

> **“VCLFA” → Variables, Conditionals, Loops, Functions, Automation = Shell Power 🐚⚙️**

---

> 💬 *Final Note:*
> Don’t just run commands — **let them run themselves**.
> 🌟 *“Automation is the art of teaching Linux to think like you.”* – Drishti Sharma 💻

```

---

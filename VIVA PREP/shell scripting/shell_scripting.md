## 🚀 1️⃣ Introduction

Shell scripting turns **commands into logic** and logic into **automation**.  
It’s like writing small programs that can control your entire system. 🧠💻  

💬 *Think of the shell as your Linux interpreter — you speak commands, it performs actions.*  

🧭 **Flow of Execution:**

```

Script (.sh file) → Shell Interpreter (bash/sh) → Kernel → System Response

````

---

## 🧩 2️⃣ Types of Shells

| Shell | Description | Command to check |
|--------|--------------|------------------|
| `sh` | Bourne Shell (original) | — |
| `bash` | Bourne Again Shell (most common) | `echo $SHELL` |
| `zsh` | Extended shell with fancy features | `zsh --version` |
| `csh`, `ksh` | C shell / Korn shell | — |

💡 *Pro Tip:* Use `cat /etc/shells` to list all available shells.  

---

## 🧰 3️⃣ Creating & Running Scripts

| Step | Command | Example |
|------|----------|----------|
| Create file | `touch script.sh` | — |
| Edit it | `nano script.sh` | — |
| Add shebang | `#!/bin/bash` | First line of script |
| Give permission | `chmod +x script.sh` | — |
| Run script | `./script.sh` | — |

💬 *Tip:* The shebang (`#!/bin/bash`) tells the system **which shell** to use 🧠  

---

## 🧠 4️⃣ Variables & User Input

| Type | Syntax | Example |
|------|---------|----------|
| Define variable | `var=value` | `name=Drishti` |
| Access variable | `$var` | `echo $name` |
| Read user input | `read varname` | `read city` |
| Positional args | `$1`, `$2` | `./script.sh arg1 arg2` |

🧩 *Mini Example:*
```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello, $name! Welcome to Linux 💻"
````

💬 *Tip:* No spaces around `=` during variable assignment ❌

---

## 🌀 5️⃣ Conditional Statements

| Type    | Syntax                               |
| ------- | ------------------------------------ |
| If      | `if [ condition ]; then … fi`        |
| If-else | `if [ condition ]; then … else … fi` |
| Elif    | `if … elif … else … fi`              |

🧩 *Example:*

```bash
#!/bin/bash
echo "Enter a number:"
read n
if [ $n -gt 10 ]; then
  echo "Greater than 10"
else
  echo "Less than or equal to 10"
fi
```

💡 *Operators:*
`-eq` (equal), `-ne` (not equal), `-gt` (greater), `-lt` (less), `-ge` (>=), `-le` (<=)

---

## 🔁 6️⃣ Loops – Automate Repetition

| Loop    | Syntax                           | Example                                         |
| ------- | -------------------------------- | ----------------------------------------------- |
| `for`   | `for var in list; do … done`     | `for i in 1 2 3; do echo $i; done`              |
| `while` | `while [ condition ]; do … done` | `while [ $i -le 5 ]; do echo $i; ((i++)); done` |
| `until` | `until [ condition ]; do … done` | `until [ $n -gt 3 ]; do echo $n; ((n++)); done` |

💬 *Tip:* Loops + conditions = **automation magic!** 🪄

---

## 🧾 7️⃣ Functions in Shell

| Syntax                         | Example |
| ------------------------------ | ------- |
| `function_name() { commands }` |         |
| Example:                       |         |

```bash
greet() {
  echo "Hello $1 👋"
}
greet Drishti
```

💡 *Pro Tip:* Use `$1`, `$2` to pass arguments to functions — just like script arguments!

---

## 📤 8️⃣ I/O Redirection

| Symbol | Meaning                       | Example                  |
| ------ | ----------------------------- | ------------------------ |
| `>`    | Redirect output (overwrite)   | `ls > files.txt`         |
| `>>`   | Append output                 | `echo "Done" >> log.txt` |
| `<`    | Take input from file          | `sort < names.txt`       |
| `2>`   | Redirect errors               | `command 2> error.log`   |
| `&>`   | Redirect both stdout + stderr | `./run.sh &> output.log` |

🧩 *Flow:*

```
Command → Output (>) → File or Device
```

💬 *Tip:* Combine with pipes (`|`) for advanced control.

---

## 🪄 9️⃣ Pipes & Filters

| Command                      | Purpose      |                      |
| ---------------------------- | ------------ | -------------------- |
| `                            | `            | Pass output as input |
| `grep`                       | Filter text  |                      |
| `sort`, `uniq`, `awk`, `cut` | Process data |                      |

🧩 *Example:*

```bash
ps aux | grep bash | sort | uniq
```

💡 *Pro Tip:* Combine multiple pipes to create “command chains” 🔗

---

## 🧩 10️⃣ Exit Status & Debugging

| Command  | Description                        |
| -------- | ---------------------------------- |
| `$?`     | Stores exit status of last command |
| `set -x` | Enables debug mode                 |
| `set +x` | Disables debug mode                |

🧩 *Example:*

```bash
./myscript.sh
echo $?
```

💬 *Interpretation:*

* `0` = Success ✅
* Non-zero = Error ⚠️

---

## 💬 11️⃣ Mini Viva Practice

| ❓ Question                        | 💡 Hint                                     |
| --------------------------------- | ------------------------------------------- |
| What is the shebang used for?     | To define script interpreter                |
| How to make a script executable?  | `chmod +x script.sh`                        |
| What does `$0` represent?         | Script name                                 |
| Difference between `$1` and `$@`? | `$1` = first arg, `$@` = all args           |
| How do you debug a shell script?  | Use `bash -x script.sh`                     |
| How to redirect errors only?      | `2>`                                        |
| What’s the purpose of `export`?   | Makes variable available to child processes |

---

## ✨ 12️⃣ Drishti’s Quick Recap Sheet 🧾

| Category   | Commands                                 |   |
| ---------- | ---------------------------------------- | - |
| Basics     | `#!/bin/bash`, `chmod +x`, `./script.sh` |   |
| Variables  | `$var`, `read`, `$1`, `$@`               |   |
| Conditions | `if`, `elif`, `else`, `test`             |   |
| Loops      | `for`, `while`, `until`                  |   |
| I/O        | `>`, `>>`, `2>`, `                       | ` |
| Functions  | `name() { … }`                           |   |
| Debug      | `$?`, `set -x`                           |   |

🧠 *Memory Trick:*

> **“BVCLIFD” → Basics, Variables, Conditions, Loops, I/O, Functions, Debug” = Full Shell Power!** ⚙️💡

---

> 💬 *Final Note:*
> Shell scripting is where **Linux starts obeying you automatically**.
> 🧩 *“Write once, automate forever.”* – Drishti Sharma 💻

```


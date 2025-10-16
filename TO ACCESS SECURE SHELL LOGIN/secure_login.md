# 🧾 **Technical Documentation: Secure File Transfer & SSH Networking in Linux** 🚀


## 🌟 1. Introduction

Welcome! Here we will learn  to secure file transfer and SSH networking in Linux! 🐧✨
This document is designed with beginners in mind — real examples, clear steps. For more clarity I'll add screenshots too for your reference. 💡

> 💬 Think of SSH as your **secure bridge** to another Linux computer — you can talk to it, send files, and even see its screen, all safely.

---

## 🎯 2. Objective

The goal of this guide is to help you:

* 🔗 Connect Linux systems within the same or different networks.
* 📁 Transfer files securely using SSH, SCP, and SFTP.
* 🧱 Understand how file permissions protect data.
* 🧠 Strengthen your Linux networking basics.
* 🏠 Learn about how to read ip address.
* 👧 How to check hostname.
* 🪄 Exploring different ways to tranfer files.(with download and without downloading).

---

## 🧠 3. Networking Fundamentals (Extended & Simplified)

Before we dive into commands, let’s understand what’s happening behind the scenes. 🌍

| 🔧 Concept                               | 🧩 Description                                                 | 💡 Example                    |
| ---------------------------------------- | -------------------------------------------------------------- | ----------------------------- |
| 💻 **IP Address**                        | Unique number assigned to each device on the network.          | `10.0.2.15 (Private IP)   |
| 🌐 **Public IP**                         | Used to identify your device on the internet (via ISP).        | `169.10.20.15`                |
| 🔢 **Port**                              | Entry gate for network communication; SSH uses **22**.         | Port 22 = SSH, Port 80 = HTTP |
| 🏠 **LAN (Local Area Network)**          | Group of devices connected locally.                            | Two PCs in the same Wi-Fi     |
| 🌍 **WAN (Wide Area Network)**           | Connects systems over the internet.                            | Remote server access          |
| 🔀 **NAT (Network Address Translation)** | Converts private IPs to public IPs for internet communication. | Happens in your Wi-Fi router  |               |
| 🧠 **Hostname**                          | A name given to a computer in a network.                       | `Drishti@VirutalBox`               |

### 🧭 Visual: Network Overview

![H](image.png)

🗣️ *In brief:* Networking is how your computer “talks” to another system. SSH(SECURE SHELL) is the language they use when they want to keep their conversation **private and secure. 🔒**

---

## 🧩 4. SSH Setup — Step-by-Step

### ✅ Pre-requisites

* Linux machine with **sudo** access.
* **SSH server** installed and enabled.
* Network connectivity (LAN or WAN).

### ⚙️ Installation & Setup

```bash
sudo apt install openssh-server openssh-client -y
sudo systemctl enable sshd
sudo systemctl start sshd
```

🧾 Check status:

```bash
sudo systemctl status sshd
```
📍 POINT TO REMEMBER:

* SUDO 
We use sudo whenever a command we are trying to run would result in a "Permission Denied" error because it involves a system-wide change.

---

## 🖧 5. File Transfer Operations

### 💡 Case A: Different Networks (Internet / WAN)

![vhu](image-4.png)


#### 🔹 Command for File Transfer

```bash (on recievers end)
sudo apt install magic-wormhole (it will require you password to install)
wormhole receive 9-microwave-nightbird
scp sum_d.sh dhriti-d@172.20.10.6:/home/dhriti-d/
```
```bash (on senders end)
sudo apt install magic-wormhole (it will require you password to install)
wormhole send ~/sum_d.sh
```
🧩 Authenticate → Transfer → Done!

# SNAPSHOT:

![G](image-2.png)[reveiver]
![v](image-3.png)[sender]

---

### 🌍 Case B: Same network

![ugt](image-1.png)

#### 🔸 Steps:

Based on the provided guide, here are the steps for sending a file between two Linux systems on the same network using `scp`, broken down into a concise checklist.

## File Transfer using SCP: Small Steps Checklist

### System 1: drishti-VirtualBox (Sender) ⬅️
### System 2: driti-d-VirtualBox (Receiver) ➡️

| Step | System | Command | Purpose |
| :--- | :--- | :--- | :--- |
| **1. Get IP** | Both | `ip a` or `hostname -I` | Note the IP address of the **Receiver** (e.g., `172.20.10.6`). |
| **2. Start SSH** | ➡️ Receiver | `sudo systemctl start ssh` | Ensure the **Secure Shell (SSH)** service is running. |
| **3. Install SSH** | ➡️ Receiver | `sudo apt install openssh-server` | *(Only if Step 2 fails)* Installs the necessary service. |
| **4. Test Connection** | ⬅️ Sender | `ssh driti-d@172.20.10.6` | Verifies the two systems can communicate securely. |
| **5. Send File** | ⬅️ Sender | `scp sum_d.sh driti-d@172.20.10.6:/home/driti-d/` | **Securely copies** the file to the receiver's home directory. |
| **6. Verify** | ➡️ Receiver | `ls /home/driti-d/` | Confirms the file (`sum_d.sh`) has successfully arrived. |

# SNAPSHOTS:

![VG](image-5.png)[INPUT]
![GJ](image-6.png)[OUTPUT]
---

## 🔐 6. Authentication & Security

| Method        | Description                       | 🔒 Security Level |
| ------------- | --------------------------------- | ----------------- |
| 🔑 Password   | Standard login authentication     | Medium            |
| 🗝️ SSH Key   | Uses a key pair for secure login  | High              |
| 🪪 Passphrase | Adds an extra password to SSH key | Very High         |


## 🧱 7. File Permissions & Ownership

| Symbol | Permission | Who can do what |
| ------ | ---------- | --------------- |
| `r`    | Read       | View contents   |
| `w`    | Write      | Modify contents |
| `x`    | Execute    | Run file        |

🔐 `chmod` – Change File Permissions

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

---

## ⚙️ 8. Troubleshooting Tips

| ⚠️ Error           | Possible Cause               | 🛠️ Fix                     |
| ------------------ | ---------------------------- | --------------------------- |
| Permission denied  | File access restricted       | `chmod` or `chown` properly |
| Connection refused | SSH not active               | Start SSH service           |
| No route to host   | Network unreachable          | Verify IP or ping host      |
| Timeout            | Firewall blocking connection | Allow ports 22 or 2222      |

✅ Test connection:

```bash
ping 10.0.2.15
```

---

## 🌐 9. Complete SSH Communication Flow

![XF](image-8.png)

---

## 🗝️ 10. Passkeys(PEM FILES)

The **.PEM** (Privacy-Enhanced Mail) file is a foundational standard for handling cryptographic data. It's not the data itself, but a **container** that makes the data safe to move around. Think of it as a labeled digital envelope for secure items! ✉️

---

## 🔑 What is Inside a PEM File?

A single PEM file can store various sensitive components used in secure internet communication (like HTTPS):

1.  **Certificates:** The public identity used to verify a server. 🆔
2.  **Private Keys:** The secret key used to decrypt data. **Keep this safe!** 🤫
3.  **Root/Intermediate CAs:** Certificates that form the "chain of trust." 🔗

---

## 🧐 How to Recognize a PEM File

PEM files are unique because they are **plain text**, not binary. They use **Base64** encoding, which looks like gibberish but allows the data to be easily copied and pasted.

Every PEM file starts and ends with clearly defined boundaries:

| Data Type | Start Marker (Header) | End Marker (Footer) |
| :--- | :--- | :--- |
| **Certificate** | `-----BEGIN CERTIFICATE-----` | `-----END CERTIFICATE-----` |
| **Private Key** | `-----BEGIN PRIVATE KEY-----` | `-----END PRIVATE KEY-----` |

---

## ⚠️ Key Takeaway

A `.pem` file is simply a **text-based container** designed to securely and portably store different types of encryption assets. It's the standard certificate format of the internet! ✅ 

## 📚 11. References

* 🔗 [GeeksforGeeks - SSH Setup in Linux](https://www.geeksforgeeks.org/ssh-setup-on-linux/)
* 🔗 [GeeksforGeeks - File Transfer via SFTP](https://www.geeksforgeeks.org/computer-networks/how-to-transfer-files-using-sftp/)
* 🔗 [OpenSSH Manual](https://www.openssh.com/manual.html)
* 🔗 [https://app.napkin.ai/page/CgoiCHByb2Qtb25lEiwKBFBhZ2UaJDE0YmFjYTUyLTk0OTMtNGMwNC1iYjhhLTJiYjQ1YWJkYjE4NA](napkin.ai (for flowcharts))
---

## ⚡ Quick Recap: Linux Networking and Secure Transfer


| Section | Concept / Objective | Key Command(s) | Purpose in Brief | Emoji Goal |
| :--- | :--- | :--- | :--- | :--- |
| **Networking** | Unique number for a device. | `ip a`, `hostname -I` | Find the address of a system on the network. | 🏠 Find Home |
| **Networking** | Name given to a computer. | `hostname -I` | Check the system's identity. | 👧 Check Name |
| **SSH Setup** | Install the secure bridge. | `sudo apt install openssh-server` | Enable secure remote access to the system. | 🌉 Build Bridge |
| **SSH Status** | Check if the secure bridge is open. | `sudo systemctl status sshd` | Verify the SSH service is actively running. | ✅ Check Status |
| **File Transfer (LAN)** | Securely copy files between local systems. | `scp file user@ip:/path/` | Transfer files between two machines on the same network. | 📁 Send File |
| **File Transfer (WAN)** | Transfer files without requiring direct server access. | `wormhole send` / `wormhole receive` | Transfer files using a simple, temporary code. | 🪄 Magic Copy |
| **Permissions** | Control who can Read, Write, or Execute. | `chmod [000-777] file` | Change file access rights for Owner, Group, and Others. | 🧱 Set Rules |
| **Troubleshooting**| Test network reachability. | `ping [IP Address]` | Verify basic network connection to the target host. | ❓ Is it Alive? |
| **Security/PEM** | Container for cryptographic keys/certificates. | *(Managed by OpenSSL)* | Safely stores digital identity for secure connections (SSL/TLS). | 🔐 Digital Key |


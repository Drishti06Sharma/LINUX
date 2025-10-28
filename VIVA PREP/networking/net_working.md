## 🚀 1️⃣ Introduction  

Networking connects computers, servers, and devices — allowing communication, data transfer, and remote access.  
As a Linux admin, mastering these commands helps you **diagnose, secure, and optimize** your network like a pro 🧠  

🧭 **Concept Flow:**  

```

IP → Ping → Route → Connect (SSH) → Monitor (netstat) → Secure (UFW)

```

---

## 🌍 2️⃣ IP Configuration & Interfaces  

| Command | Description | Example |
|----------|--------------|----------|
| `ifconfig` | Displays or configures network interfaces | `ifconfig eth0` |
| `ip addr show` | Shows detailed IP info | `ip addr show ens33` |
| `ip link set eth0 up` | Enables interface | `sudo ip link set eth0 up` |
| `hostname -I` | Shows system’s IP address | `hostname -I` |
| `nmcli` | Manage network connections (GUI-based distros) | `nmcli dev status` |

💬 *Tip:* Use `ip a` instead of `ifconfig` — it’s newer and more detailed.

🧩 *Flow:*  
```

Detect → Configure → Test → Monitor

```

---

## 📡 3️⃣ Testing Connectivity  

| Command | Purpose | Example |
|----------|----------|----------|
| `ping` | Tests network reachability | `ping google.com` |
| `traceroute` | Shows route packets take | `traceroute 8.8.8.8` |
| `host` / `nslookup` | DNS lookup | `nslookup github.com` |
| `curl` / `wget` | Fetch web data | `curl https://example.com` |

**Q1.** 💭 What does `ping` use?  
➡️ ICMP (Internet Control Message Protocol) to test reachability.  

**Q2.** 🧩 What if ping fails?  
➡️ Check cable/Wi-Fi, IP config, gateway, or firewall rules.  

💬 *Pro Tip:*  
Use `ping -c 4 google.com` to limit pings (4 packets only).

---

## 🔐 4️⃣ Remote Access (SSH & SCP)

| Command | Description | Example |
|----------|--------------|----------|
| `ssh user@ip` | Connect to remote server | `ssh drishti@192.168.1.10` |
| `scp file user@ip:/path` | Securely copy file | `scp notes.txt drishti@192.168.1.10:/home/drishti/` |
| `ssh-keygen` | Generate SSH keys | `ssh-keygen -t rsa` |
| `ssh-copy-id user@ip` | Copy public key to remote | `ssh-copy-id drishti@192.168.1.10` |

💬 *Tip:*  
Use SSH keys for passwordless logins and higher security 🔐  

🧩 *Flow:*  
```

ssh-keygen → ssh-copy-id → ssh login → scp transfer

```

---

## 🌐 5️⃣ Network Routing & Tables  

| Command | Description | Example |
|----------|--------------|----------|
| `route -n` | View routing table | `route -n` |
| `ip route show` | Show routes | `ip route show` |
| `ip route add` | Add new route | `sudo ip route add 10.0.0.0/24 via 192.168.1.1` |
| `ip neigh show` | View ARP table | `ip neigh show` |

💬 *Tip:*  
Default route = where packets go when destination is unknown 🚀  

---

## 🧱 6️⃣ Network Diagnostics & Monitoring  

| Command | Purpose | Example |
|----------|----------|----------|
| `netstat -tulnp` | Shows listening ports & processes | `sudo netstat -tulnp` |
| `ss -tulwn` | Modern replacement for netstat | `ss -tulwn` |
| `lsof -i :80` | List processes using port 80 | `sudo lsof -i :80` |
| `nmap` | Scan network for open ports | `nmap 192.168.1.0/24` |

💬 *Pro Tip:*  
If `nmap` isn’t installed → `sudo apt install nmap`  

🧩 *Flow:*  
```

Detect (ping) → Trace (traceroute) → Analyze (netstat/ss) → Secure (ufw)

```

---

## 🧰 7️⃣ Firewall Management  

| Command | Function | Example |
|----------|-----------|----------|
| `sudo ufw enable` | Enable firewall | `sudo ufw enable` |
| `sudo ufw allow 22` | Allow SSH port | `sudo ufw allow 22` |
| `sudo ufw deny 80` | Block HTTP traffic | `sudo ufw deny 80` |
| `sudo ufw status` | Check current rules | `sudo ufw status` |
| `sudo ufw reset` | Reset firewall | `sudo ufw reset` |

💬 *Tip:*  
UFW = “Uncomplicated Firewall” — it’s built on top of `iptables`.

🧩 *Flow:*  
```

Enable → Allow needed ports → Deny others → Verify

````

---

## 🛰️ 8️⃣ Network File Transfer & Sharing  

| Command | Description | Example |
|----------|--------------|----------|
| `rsync` | Sync files between systems | `rsync -av /data/ user@ip:/backup/` |
| `ftp` | File Transfer Protocol | `ftp 192.168.1.5` |
| `sftp` | Secure FTP over SSH | `sftp drishti@server` |

💬 *Pro Tip:*  
`rsync` is faster than `scp` — it transfers *only changed parts* of files ⚡

---

## 🧠 9️⃣ Real-World Scenario  

**Situation:**  
You need to copy project files from your local machine to a remote lab server, but only through a secure connection.  

**Solution:**  
```bash
ssh-keygen -t rsa
ssh-copy-id drishti@192.168.1.20
scp -r ~/project drishti@192.168.1.20:/home/drishti/
````

💬 *Result:* Passwordless secure transfer ✅

---

## 🎯 🔟 Mini Viva Practice

| ❓ Question                                  | 💡 Hint                         |
| ------------------------------------------- | ------------------------------- |
| What command checks your IP address?        | `ip addr show`                  |
| How to test if a website is reachable?      | `ping website`                  |
| Which protocol does ping use?               | ICMP                            |
| How to securely copy files between systems? | `scp`                           |
| How to see open ports and their processes?  | `netstat -tulnp` or `ss -tulwn` |
| What port does SSH use?                     | Port **22**                     |
| How to allow SSH in firewall?               | `sudo ufw allow 22`             |

---

## ✨ 11️⃣ Drishti’s Quick Recap 🧾

| Category     | Commands                          |
| ------------ | --------------------------------- |
| IP Config    | `ip a`, `ifconfig`, `hostname -I` |
| Connectivity | `ping`, `traceroute`, `nslookup`  |
| Remote       | `ssh`, `scp`, `sftp`              |
| Routing      | `ip route`, `route -n`            |
| Firewall     | `ufw enable`, `ufw allow 22`      |
| Monitoring   | `netstat`, `ss`, `lsof`, `nmap`   |

🧠 *Memory Trick:*

> **“ICRFM” → IP, Connect, Remote, Firewall, Monitor” = Network Mastery Flow! 🌐**

---

> 💬 *Final Note:*
> Networking isn’t just about connections — it’s about **communication** between systems.
> 🌟 *“When systems talk clearly, admins sleep peacefully.”* – Drishti Sharma 💻

```

---

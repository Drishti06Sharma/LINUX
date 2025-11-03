## 🧠 Secure GUI Access Setup (SSH + VNC)

### 👩‍💻 Objective:

To set up secure remote GUI access using:

1. SSH with X11 forwarding (`ssh -X`)
2. VNC desktop sharing
3. Proper SSH key-based authentication

---

## ⚙️ Step 1: Generate SSH Key Pair (on your laptop)

Run this on your **local/client system** 👇

```bash
ssh-keygen -t ed25519 -C "drishti@my-laptop"
```

💡 *This creates two files:*

* `~/.ssh/id_ed25519` → your private key 🔒
* `~/.ssh/id_ed25519.pub` → your public key 🔑

You can verify:

```bash
ls ~/.ssh
```

---

## 📨 Step 2: Copy the Public Key to the Remote System (Mahi’s Laptop)

Use the simple one-liner (recommended):

```bash
ssh-copy-id mahi@<mahi-laptop-IP>
```

🧩 Replace `<mahi-laptop-IP>` with Mahi’s actual IP (example: `10.0.2.15`).

If `ssh-copy-id` isn’t available, you can do it manually:

On **your system**:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copy the entire key output and paste it into Mahi’s system:

On **Mahi’s laptop**:

```bash
echo "ssh-ed25519 AAAAB3...your_key_here... drishti@my-laptop" >> ~/.ssh/authorized_keys
```

---

## 🔐 Step 3: Fix Permissions (on Mahi’s laptop)

Permissions are *super important* — incorrect ones will block SSH login ❌
Run these on Mahi’s laptop:

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

---

## 🖥️ Step 4: Test SSH Access

Now from your **laptop**, try connecting:

```bash
ssh mahi@<mahi-laptop-IP>
```

✅ If setup is correct → you’ll log in **without password!**

---

## 🪄 Step 5: Run a GUI App via SSH (X11 Forwarding)

Use `-X` for GUI forwarding:

```bash
ssh -X mahi@<mahi-laptop-IP>
```

Once logged in, test with:

```bash
xclock
```

🕐 A clock window should appear on your screen — that’s your **GUI over SSH** working perfectly!

---

## 🧰 Step 6: Install & Run VNC (for full desktop sharing)

On **Mahi’s laptop (server):**

```bash
sudo apt install tightvncserver
vncserver
```

You’ll set a password and get a display like `:1`

---

On **your laptop (client):**

```bash
vncviewer <mahi-laptop-IP>:1
```

🚀 This will open the full remote desktop session using VNC!

---

## 📁 Step 7: Authorized Keys File (Redacted Example)

File path on **Mahi’s system:**

```
/home/mahi/.ssh/authorized_keys
```

Example content (redacted 🔒):

```bash
ssh-ed25519 AAAAB3NzaC1yc2EAAAADAQABAAABAQ************** drishti@my-laptop
```

---

## 📸 Deliverables

✅ (a) Screenshot — Successful `ssh -X` running a GUI app (e.g., xclock)

# OUTPUT:

![vg](../LINUS%20ASSIGNMENTS/images/image-3.png)
![tgcy](../LINUS%20ASSIGNMENTS/images/image-4.png)
![ss1](../LINUS%20ASSIGNMENTS/images/image-5.png)

✅ (b) Screenshot — VNC desktop session running

# OUTPUT:

![vnc1](../LINUS%20ASSIGNMENTS/images/image-6.png)
![vnc2](../LINUS%20ASSIGNMENTS/images/image-7.png)
![vnc3](../LINUS%20ASSIGNMENTS/images/image-8.png)

✅ (c) Screenshot — `authorized_keys` file (with key redacted)

# OUTPUT:

![3](../LINUS%20ASSIGNMENTS/images/image-9.png)


---


# 📨 Sending Files Between Two Linux Systems on the Same Network (Using scp)

Hey there! 👋  
This guide will help you *send files between two Linux users* when both systems are on the *same bridged network* (for example, two VirtualBox machines).  
We’ll be using the *Secure Copy (SCP)* command — it’s simple, fast, and secure 🔒.

---

## 🧠 What We’re Doing
We’ll send a file named sum_d.sh  
👉 from **drishti-VirtualBox**  
👉 to **driti-d-VirtualBox**

Both systems are connected to the same Wi-Fi through *Bridged Adapter mode* in VirtualBox.

---

## ⚙ Step 1: Check Your IP Addresses

Run the following command on *both systems*:
```bash
ip a

or the shorter version:

hostname -I

You’ll get something like this 👇

inet 172.20.10.5/28 brd 172.20.10.15 scope global dynamic enp0s3

📍 From this, note down:
	•	drishti-VirtualBox → 172.20.10.5
	•	driti-d-VirtualBox → (will be something like 172.20.10.6)

⸻

🚀 Step 2: Start SSH on the Receiver

On driti-d-VirtualBox (the system receiving the file), make sure the SSH service is running:

sudo systemctl start ssh
sudo systemctl enable ssh

If SSH isn’t installed, you can add it with:

sudo apt install openssh-server


⸻

🔗 Step 3: Test the Connection

From drishti-VirtualBox, test if you can connect:

ssh driti-d@172.20.10.6

(Replace the IP with her actual one.)

If it asks for a password and logs you in — great! 🎉
That means both systems can communicate securely.

⸻

📂 Step 4: Send the File Using scp

Now, on your system (drishti-VirtualBox), run this command:

scp sum_d.sh driti-d@172.20.10.6:/home/driti-d/

🧾 Explanation:
	•	scp → Secure Copy command
	•	sum_d.sh → The file you want to send
	•	driti-d@172.20.10.6 → Username and IP of the receiver
	•	/home/driti-d/ → Folder where the file will be saved

When asked for a password, enter driti-d’s password.

⸻

✅ Step 5: Verify the Transfer

On driti-d-VirtualBox, check if the file arrived:

ls /home/driti-d/

You should see:

sum_d.sh

If it’s there — mission accomplished! 🥳

⸻

💡 Tips
	•	Always double-check both machines are on the same subnet (e.g., 172.20.10.x)
	•	If the transfer fails, make sure SSH is running and the firewall isn’t blocking port 22
	•	You can also copy entire folders using:

scp -r my_folder driti-d@172.20.10.6:/home/driti-d/



⸻

🧩 Summary

Action	Run On	Command / Purpose
Check IP	Both	ip a
Start SSH	Receiver	sudo systemctl start ssh
Test SSH	Sender	ssh user@ip
Send File	Sender	scp file user@ip:/path/
Verify	Receiver	ls /home/user/
```

## INPUT:

![d](../images%202/s_nt.png)

## OUTPUT:

![vhi](../images%202/s_no.png)
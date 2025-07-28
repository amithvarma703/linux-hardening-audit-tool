# Linux Hardening Audit Tool

## 📌 Description
A simple Bash script to audit security settings on a Linux system.
It checks firewall status, running services, SSH configuration, file permissions, and (optionally) rootkits.

## 🚀 How to use
1. Clone the repository:
```bash
git clone https://github.com/yourusername/linux-audit-tool.git
cd linux-audit-tool
```
2. Make the script executable:
```bash
chmod +x linux_audit.sh
```
3. Run the script:
```bash
./linux_audit.sh | tee audit_report.txt
```

## 🛠 What it checks
- Firewall status (UFW)
- Running services
- SSH root login settings
- File permissions (/etc/passwd, /etc/shadow)
- Rootkit presence (optional, if rkhunter installed)

## ✅ Output
- On-screen summary
- Optional: save output to `audit_report.txt`

## 📦 Tools Used
- Bash scripting
- Linux CLI tools (`ufw`, `systemctl`, `grep`, `ls`, `rkhunter`)

## 🧩 Contribution
Feel free to fork and add more checks!

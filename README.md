# linux-hardening-audit-tool
A simple Bash script that audits key Linux security configurations, including firewall status, running services, SSH settings, file permissions, and rootkit detection.
🛡️ Linux Hardening Audit Tool
📌 Description
A lightweight and practical Bash script to audit the security posture of a Linux system.
It helps system administrators and cybersecurity learners quickly check for common misconfigurations and vulnerabilities, including:

Firewall status

Running services

SSH root login settings

Critical file permissions

Optional rootkit detection

This tool automates routine checks and outputs a clear audit report, promoting better system hardening and compliance.

🚀 Features
✅ Easy to use – just run a single script
✅ Covers important Linux hardening checks
✅ Saves the audit output to a text report (audit_report.txt)
✅ Extensible – add your own checks anytime

🛠 Tools & Commands Used
Bash scripting

ufw – to check firewall status

systemctl – to list running services

grep – to read SSH config

ls – to check file permissions

rkhunter – for rootkit detection (optional)

📦 Output
On-screen audit summary

Optionally saved to audit_report.txt for future reference or sharing with your team

📋 Example usage

chmod +x linux_audit.sh
./linux_audit.sh | tee audit_report.txt

📚 Why this tool?
Linux systems often run critical workloads. Regular audits help identify:

Open ports and unnecessary services

Weak SSH configurations (e.g., root login enabled)

Incorrect file permissions

Hidden malware/rootkits

By running this script, you get a quick snapshot of your system’s security posture and actionable insights.

🤝 Contribute
Feel free to fork this project and add:

More security checks (e.g., password policies, sudoers)

Support for different distributions

Export to JSON/HTML reports

Pull requests are welcome!

⚠️ Disclaimer
This tool is for educational and internal auditing purposes only.
Always test scripts carefully and use them responsibly.

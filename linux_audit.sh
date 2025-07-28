#!/bin/bash

echo "===== Linux Hardening Audit Report ====="
echo "Date: $(date)"
echo ""

# Firewall status
echo "[+] Checking firewall status..."
ufw status verbose
echo ""

# Unused services
echo "[+] Listing active services..."
systemctl list-units --type=service --state=running
echo ""

# SSH root login
echo "[+] Checking if root login is allowed over SSH..."
grep "^PermitRootLogin" /etc/ssh/sshd_config
echo ""

# File permissions
echo "[+] Checking permissions on /etc/passwd and /etc/shadow..."
ls -l /etc/passwd /etc/shadow
echo ""

# Rootkit check (optional, if tool installed)
echo "[+] Checking for rootkits (rkhunter)..."
if command -v rkhunter > /dev/null; then
    sudo rkhunter --check --sk
else
    echo "rkhunter not installed. Skipping rootkit check."
fi
echo ""

echo "===== Audit Complete ====="
echo "Review the above output and take necessary actions to harden your system."

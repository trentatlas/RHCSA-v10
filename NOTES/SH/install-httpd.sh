#!/bin/bash
export PATH=/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin

umask 077

if rpm -q httpd &> /tmp/install-httpd; then
	echo "Apache is already installed"

else
	echo "Installing Apache HTTPD"
	dnf install httpd -y
	systemctl enable --now httpd
	systemctl status httpd
	
fi

#!/bin/bash
export PATH=/root/.local/bin:/root/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin

umask 077

if [ ! -d "/opt/.secret" ]; then
	echo "making .secret"
	mkdir -p /opt/.secret
fi

mount /dev/ROOTVG/SECRETLVs /opt/.secret

if mountpoint -q /opt/.secret; then
	echo "MOUNT /opt/.secret successful."
else
	echo "MOUNT /opt/.secret FAILED."
fi

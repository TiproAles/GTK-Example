#!/bin/bash
echo "Starting weston compositor"
/usr/bin/entry.sh &
echo "Starting sshd"
/usr/sbin/sshd -D
#!/usr/bin/env bash

# start ssh
/usr/sbin/sshd && tail -f /dev/null &

# start Bash
/bin/bash

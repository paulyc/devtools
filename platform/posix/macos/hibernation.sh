#!/bin/bash

# Enable Hibernation
sudo pmset -a hibernatemode 3

# Disable Hibernation and free hiberfile
# NOTE: May need to disable SIP
#sudo csrutil disable
#sudo pmset -a hibernatemode 0 && sudo rm /var/vm/sleepimage

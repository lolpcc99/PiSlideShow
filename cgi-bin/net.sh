#!/bin/sh -x

# The first step is to find the name of the network interface you want to set as static. 
# Run the following command in a terminal to display a list of available network interfaces.
# 
# sudo nmcli -p connection show
# 
# 
# We know the name of the network connection we want to update, we can send three commands 
# to set the new IP address, Gateway and DNS server.

# Work
# IPADDRESS=10.0.1.253
# GATEWAY=10.0.1.1
# DNS1=8.8.8.8
# DNS2=8.8.4.4
# NETMASK=24

# Club
IPADDRESS=192.168.4.6
GATEWAY=192.168.4.1
DNS1=8.8.8.8
DNS2=8.8.4.4
NETMASK=23


sudo nmcli c mod "Wired connection 1" ipv4.addresses $IPADDRESS/$NETMASK ipv4.method manual

sudo nmcli con mod "Wired connection 1" ipv4.gateway $GATEWAY

sudo nmcli con mod "Wired connection 1" ipv4.dns "$GATEWAY"

#  
# 
# If you want to use multiple DNS servers, you can add them separated by commas; for 
# example, to use Google's DNS servers, use the following.
# 

sudo nmcli con mod "Wired connection 1" ipv4.dns "$DNS1,$DNS2"

# 
# The same method can be used for adding multiple IP addresses to the same network 
# connection; for example, the following command would assign IP addresses 
# 10.0.0.220, 10.0.0.221 and 10.0.0.222.

# sudo nmcli c mod "Wired connection 1" ipv4.addresses "10.0.0.220/24, 10.0.0.221/24, 10.0.0.222/24" ipv4.method manual

# 
# Step 3:
# 
# When you have finished updating the network settings on your Raspberry Pi, you 
# can restart the network connection with the following command.

sudo nmcli c down "Wired connection 1" && sudo nmcli c up "Wired connection 1"

#  All should be done

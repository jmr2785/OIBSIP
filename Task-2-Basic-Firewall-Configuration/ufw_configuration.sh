#!/bin/bash

# Basic Firewall Configuration using UFW

echo "Updating package lists..."
sudo apt update

echo "Installing UFW..."
sudo apt install ufw -y

echo "Allowing SSH connections (port 22)..."
sudo ufw allow ssh

echo "Denying HTTP traffic (port 80)..."
sudo ufw deny http

echo "Enabling UFW..."
sudo ufw --force enable

echo "Firewall rules applied. Displaying current UFW status:"
sudo ufw status verbose


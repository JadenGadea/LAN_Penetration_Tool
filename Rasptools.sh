#!/bin/bash


echo "Updating and upgrading your system..."
sudo apt-get update && sudo apt-get upgrade -y


echo "Installing Wireshark..."
sudo apt-get install wireshark -y

echo "Installing Nmap..."
sudo apt-get install nmap -y

echo "Installing Metasploit..."
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
chmod 755 msfinstall && \
./msfinstall

echo "Installing TcpDump..."
sudo apt-get install tcpdump -y

echo "Installing Ettercap..."
sudo apt-get install ettercap-text-only -y

echo "Installing ARPScan..."
sudo apt-get install arp-scan -y

echo "Installing Aircrack-ng..."
sudo apt-get install aircrack-ng -y

echo "Installation completed. Remember to check the compatibility of your WiFi adapter for Aircrack-ng."

#!/bin/bash
echo "[+] -------- Update and Install Ansible"
sudo apt-get update
sudo apt-get -y install ansible
echo "[+] -------- Run the Ansible-pull"
sudo ansible-pull -U https://github.com/thegingerninja/ansible_pull_ubuntu_javadev.git
echo "[?] -------- Remember to set a password for paul"


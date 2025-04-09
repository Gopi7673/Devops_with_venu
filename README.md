# Devops_with_venu
# Jenkins 2.375.1 Installation via Ansible

This Ansible playbook installs Jenkins version 2.375.1 Amazon Linux-based systems. It handles all dependencies, installs Jenkins from the official RPM, and ensures the service is started and enabled.

## Features

- Installs **Java 17 Amazon Corretto**
- Downloads and installs **Jenkins 2.375.1**
- Imports the correct **GPG key** for validation
- Starts and enables Jenkins as a service

## Prerequisites
- create 1 master server and required number of slave servers
- create ssh configuration to all slave servers from master server
- Ansible installed on the control/master server
- Remote hosts are Amazon Linux-based
- Ansible inventory with target hosts

## How to Use

1. **Clone or copy the playbook** to your Ansible directory.
2. **Run the playbook** 

using command in bash run --->ansible-playbook -i /path/to/inventory install_jenkins.yml


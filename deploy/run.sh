#!/bin/bash
ansible-galaxy install -r requirements.yml
ansible-playbook -i hosts -u ubuntu --vault-id @prompt wordcount.yml

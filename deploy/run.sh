#!/bin/bash

ansible-playbook -i hosts -u ubuntu --vault-id @prompt wordcount.yml

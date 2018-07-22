#!/bin/sh

ansible all -i hosts -u ubuntu -m ping

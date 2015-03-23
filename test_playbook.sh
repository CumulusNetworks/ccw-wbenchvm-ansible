#!/bin/bash
cat <<< 'localhost' > ./inventory

ansible-playbook --syntax-check -i ./inventory ./site.yml

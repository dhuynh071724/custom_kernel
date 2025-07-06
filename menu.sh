#!/bin/bash
while true; do
  clear
  echo "🛠️ Ansible Control Menu"
  echo "1. Check resources"
  echo "2. Stress test"
  echo "3. Update servers"
  echo "4. Cleanup Docker"
  echo "5. Exit"
  read -p "Chọn: " opt

  case $opt in
    1) ansible-playbook -i inventory.ini playbooks/check_resources.yaml ;;
    2) ansible-playbook -i inventory.ini playbooks/stress_test.yaml ;;
    3) ansible-playbook -i inventory.ini playbooks/update_servers.yaml ;;
    4) ansible-playbook -i inventory.ini playbooks/docker_cleanup.yaml ;;
    5) exit ;;
    *) echo "Sai lựa chọn!" && sleep 1 ;;
  esac
done
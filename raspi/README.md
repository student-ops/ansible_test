最後に

genarate_ssh.yml

ssh -i ~/raspi_test new_user@192.168.11.40

```
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_ras_pi_64

ansible-playbook -i ./inventory.ini playbook.yml
```

```
ansible-playbook -i ./inventory.ini playbook.yml
ansible-playbook -i ./inventory.ini config_ssh.yml
// change inventory ssh prot to 33322
ansible-playbook -i ./inventory.ini config_boot_ufw.yml

```

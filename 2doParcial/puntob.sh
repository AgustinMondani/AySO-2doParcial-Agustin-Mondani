sudo apt update 
sudo apt installe ansible
cd ~
ll .ssh/
ssh-keygen
cat .ssh/id_rsa.pub ------> copio la clave
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC7kD73bD08gzD3KDe7rbje62NQp+lvcYUiMYDKGTi38+iz89y70My1y0sJK8MrvX+xX1nrd6Ygs6zWNV1j4Yy90fTpl4x/Gvce5JFkPmz1O/7xH3+WWKTttqLDBG4BPlWCC2VdRZtyRvjyZq/EHIX9zxR9BIhnhLF0nJak1mF9xIUS5xMY/RIFyvxgyU0fFcVND2eXtxWebCiWW/NE2kzei8nWSbOmNviL2RswL7+WRyvz6HSPKuUMUcs0uRh3ziimaAbP4unUE8fmOF/ZimcPEtQm1M0WX3kFftT1y7ThLQtaMMe9Xnn5v0Z4ql5O5gPEwEkPlJk/mamHYb9vYsQuqjNQeDpxkyTPpiJ+2B5EdgZBYM5Ay6KF8ITRSV2n5cSVpLwVfNSisg7OI3nwYUlqMchRzPTSgR5n9oM1zXI/SafyyE+WdYbDg0xgRzDBlLzQOTiFd+80rtrUwLcPyMZ+n/om9Iry5k1mjowE+Qbvw90ihLCiDp+6d9AKqTiyPic= vagrant@VMAnsible" >> .ssh/authorized_keys  ----> esto desde la  vm Desarrolador
ssh vagrant@192.168.56.9
cd ..
git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git
cd UTN-FRA_SO_Ansible
cd ejemplo_02
sudo vim inventory -----> modifico la ip del desarrollador y borro todo lo demas
sudo vim plybook.yml ------> dejo solo las instrucciones a ejecutar actualizar apt e isntalar apache
ansible-playbook -i inventory playbook.yml



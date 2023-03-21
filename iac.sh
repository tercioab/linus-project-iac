#!/bin/bash

echo "criando diretorios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuários:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios:"

usearadd setinha  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
usearadd will  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
usearadd tercio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

usearadd danielzin  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
usearadd renan  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
usearadd carlos  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

usearadd valdomiro -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
usearadd kletim -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
usearadd seuzé  -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "especificando permissões dos diretórios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim!" 



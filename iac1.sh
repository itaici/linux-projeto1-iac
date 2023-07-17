#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd Tita -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Capitu -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Thomas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Venus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Samanta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Magali -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Pandora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Madona -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Rafael -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criacao de usuário finalizado....."
#!/bin/bash

echo "Criando o ambiente:"
echo "Criando os diretórios...."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando os grupos...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando os users e atribuindo grupos...."

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria Santos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Joao das Neves" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -c "Debora Duarte" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana dos Anjos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Pereira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -c "Josefina Silva Costa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Pereira Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Arnaldo dos Santos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Users criados e grupos atribuidos!"

echo "Atribuindo diretórios aos grupos...."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Diretórios atribuídos!"

echo "Definindo permissões...."


chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Permissões atribuídas!"

echo "Fim do script."


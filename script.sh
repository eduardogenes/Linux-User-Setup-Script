#!/bin/bash

echo "criando diretorios..."

sudo mkdir /publico /adm /ven /sec

#-----------------------#


echo "criando grupos..."

sudo groupadd GRP_ADM 
sudo groupadd GRP_VEN 
sudo groupadd GRP_SEC

#-----------------------#

echo "criando usuarios..."

sudo useradd carlos -c "carlos  da silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd maria -c "maria chica" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
sudo useradd joao -c "joao aurelio" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

sudo useradd debora -c "debora martins" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd sebastiana -c "sebastiana rosa" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
sudo useradd roberto -c "roberto welton" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

sudo useradd josefina -c "josefina oliveira" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd amanda -c "amanda rodrigues" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
sudo useradd rogerio -c "rogerio lima" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
 
#-----------------------#

echo "definindo permissoes dos diretorios..."

sudo chmod 777 /publico

sudo chown :GRP_ADM /adm
sudo chmod 770 /adm

sudo chown :GRP_VEN /ven
sudo chmod 770 /ven


sudo chown :GRP_SEC /sec
sudo chmod 770 /sec

echo "Setup finalizado!"

# Definições

# Todo o provisionamento deve ser feito em um arquivo do tipo Bash Script
# O dono de todos os diretórios criados será o usuário root
# Todos os usuários terão permissão total dentro do diretório publico
# Os usuários de cada grupo terão permissão total dentro do seu respectivo diretório
# Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem
# Subir o arquivo de script criado para a sua conta no Github/Gitlab
 

 


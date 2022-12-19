
#!/bin/bash

echo "CRIANDO DIRETORIOS... "

mkdir /publico 

mkdir /adm

mkdir /ven

mkdir /sec


groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "CRIANDO USUARIOS..."

useradd carlos -c "carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
passwd carlos -e
useradd maria -c "maria" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e


useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "sebastiana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e


useradd josefina -c "josefina" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio  -c "rogerio" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e

echo "CRIANDO GRUPOS"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "adicionando permissões"

chmod 777 /publico 
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "finalizado..."

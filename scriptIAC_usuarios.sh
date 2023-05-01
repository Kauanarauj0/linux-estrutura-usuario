#!/bin/bash

# Criando 4 diretórios
echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

# Criando 4 grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando uma variavel para a senha de cada usuário
echo "Criando senhas..."
senha1=$(openssl passwd -crypt Senha123)
senha2=$(openssl passwd -crypt Senha456)
senha3=$(openssl passwd -crypt Senha891)
senha4=$(openssl passwd -crypt Senha111)
senha5=$(openssl passwd -crypt Senha131)
senha6=$(openssl passwd -crypt Senha151)
senha7=$(openssl passwd -crypt Senha171)
senha8=$(openssl passwd -crypt Senha192)
senha9=$(openssl passwd -crypt Senha212)

# Criando 9 usuários e adicionando-os a um grupo
echo "Criando usuários..."
useradd -m -s /bin/bash -G GRP_ADM -p $senha1 carlos 
useradd -m -s /bin/bash -G GRP_ADM -p $senha2 maria
useradd -m -s /bin/bash -G GRP_ADM -p $senha3 joao

useradd -m -s /bin/bash -G GRP_VEN -p $senha4 debora
useradd -m -s /bin/bash -G GRP_VEN -p $senha5 sebastiana
useradd -m -s /bin/bash -G GRP_VEN -p $senha6 roberto

useradd -m -s /bin/bash -G GRP_SEC -p $senha7 josefina
useradd -m -s /bin/bash -G GRP_SEC -p $senha8 amanda
useradd -m -s /bin/bash -G GRP_SEC -p $senha9 rogerio

# Configurando permissões
echo "Criando permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm /ven /sec
chmod 777 /publico

echo "Processo concluído com sucesso!"
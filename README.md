# Script de criação de usuários e configuração de permissões
Este script foi desenvolvido como parte do conteúdo do bootcamp ''Cloud AWS'', mais especificamente na matéria de Linux, com o objetivo de automatizar a criação de usuários e configuração de permissões em um sistema Linux.

## 📚 Funcionalidades
O script realiza as seguintes operações:

- Criação de quatro diretórios: /publico, /adm, /ven, e /sec.
- Criação de três grupos: GRP_ADM, GRP_VEN, e GRP_SEC.
- Criação de nove usuários e adição de cada um a um grupo específico.

E então aplica as seguintes permissões: 
  - /publico recebe permissão de leitura, gravação e execução para todos os usuários; 
  - /adm, /ven, e /sec recebem permissão de leitura, gravação e execução para o usuário root e membros do respectivo grupo; 
  - demais usuários não têm acesso a estes diretórios.
  
## 🛠️ Como utilizar esse repositório
Para executar o script você pode utilizar uma das opções abaixo:

1) Faça o download do arquivo script.sh para o seu computador.
2) Abra um terminal Linux. 
3) Navegue até o diretório onde o arquivo script.sh foi salvo. 
4) Se necessário, dê permissão de execução para o arquivo usando o comando chmod +x script.sh.
5) Para executar o script, utilize o comando ```bash scriptIAC_usuarios.sh```
6) Caso precise de privilégios de superusuário (root) para executar o script, utilize o comando ```sudo bash scriptIAC_usuarios.sh```

Ou

1) Baixe diretamente via terminal Linux
```
git clone https://github.com/Kauanarauj0/linux-estrutura-usuario
```
3) Acesse a pasta do projeto:
```
cd caminho-do-repositorio
```
4) Execute o script:
```
sudo bash scriptIAC_usuarios.sh
```

## 📈 Considerações finais

Este script pode ser utilizado como base para automatização de processos simples de criação de usuários e permissões em diretórios no Linux. 

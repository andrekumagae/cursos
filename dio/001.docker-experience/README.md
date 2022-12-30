# Docker experience

Repositório onde estudei conceitos de Docker. 

Segue instalação para rodar o Docker no ubuntu pelo Windows via WSL.

## Instalando o docker via WSL

### 1. Habilite o WSL 2

Execute no power shell em modo de administrador os comandos:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
#Reinicie o PC
```

Instale esse aplicativo: https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi

Execute este comando no Power Shell:

```powershell
wsl --set-default-version 2
```

### 2. Instalação e configuração

Instale o Ubuntu pela Microsoft Store e rode estes caminhos conforme documentação do docker:https://docs.docker.com/engine/install/ubuntu/

```bash
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

```bash
sudo mkdir -p /etc/apt/keyrings
```

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

```bash
sudo apt-get update
```

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

Para testar o docker hello-world:

## 3. Instalar o Docker for Windows

````bash
sudo docker run hello-world
````

## Executando um container

```dockerfile
#listar containers
docker ps

#listar imagens
docker images

docker -dti ubuntu
#-d rodar em background
#-t 
#-i

#executar
docker exec -it numero_id /bin/bash
#ver os ids em docker ps

#dar nome para a imagem
#docker run -dti --name apelido_imagem imagem_origem
#ex.:
docker run -dti --name ubuntu-principal ubuntu

#rodar imagem (ex.: centos)
docker run -dti centos
#se não estiver no container, vai baixá-la automaticamente

#parar
docker stop numero_id

#excluir container
docker rm numero_id

#excluir imagem
docker rmi nome_imagem

#comandos pelo container

#ex.: criando diretório
docker exec ubuntu_principal mkdir ~/nova_pasta

#copiar entre containers
docker cp arquivo.txt principal:/nova_pasta

```

## Docker MySQL

```bash
docker pull mysql
#-d para executar em background
#-p porta padrao
docker run -e MYSQL_ROOT_PASSWORD=senha --name mysql-A -d -p 3306:3306 mysql
#executando o banco
docker exec -it nome_container bash
#comando para se conectar no banco pelo mysql-client
mysql -u root -p --protocol=tcp

```

## Mudando localização de armazenamento

Usando o comando abaixo, podemos visualizar onde salvamos o nosso container:

```bash
docker inspect -a

```

Em Mounts > Destinations:

```bash
        "Mounts": [
            {
                "Type": "volume",
                "Name": "be9c75e7c009c818341f3962e3b42c9744388f88f2cf70e34f4191396689ade2",
                "Source": "/var/lib/docker/volumes/be9c75e7c009c818341f3962e3b42c9744388f88f2cf70e34f4191396689ade2/_data",
                "Destination": "/var/lib/mysql",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
        ],

```

## Na prática

### Sintaxe

```bash
#sintaxe
#docker run 
#-dti onde -d para rodar em background, -t para rodar em tty e -i para modo interativo
#--name para nomear o container
#--mount type para o tipo, que pode ser bind ou volume
#src é a pasta de origem
#dst é a pasta de destino
#por fim a imagem que usamos de modelo, que no caso é o debian
```
## Tipo Bind

```bash
docker run -dti --mount type=bind,src=/data/debian-A,dst=/data debian
docker exec -ti nome_container bash
#criar com modo de somente leitura
docker run -dti --mount type=bind,src=/data/debian-A,dst=/data,ro debian
```

### Tipo mount

```bash
#criando um volume
#docker volume create nome
docker volume create data-debian
#acessando a pasta
cd /var/lib/docker/volumes/data-debian/
#exemplo do tipo volume
docker run -dti --name debian-B --mount type=volume src=data-debian,dst=/data debian
docker exec -ti debian-B
```

### Tipos de mount

## Mount do tipo named

Podemos criá-lo manualmente pelo comando:

```bash
docker volume create nome-do-volume
```

Ele serão criados no diretório padrão:

```bash
/var/lib/do

## Mount to tipo volume

Parece com tipo named, porém não precisa especificar o nome. Mais voltado para dados persistentes.

```bash
#criando um volume
#docker volume create nome
docker volume create data-debian
#acessando a pasta
cd /var/lib/docker/volumes/data-debian/
#exemplo do tipo volume
docker run -dti --name debian-B --mount type=volume src=data-debian,dst=/data debian
docker exec -ti debian-B
```

## Mount do tipo bind


Criamos um diretório abaixo para nosso novo destino:

```bash
mkdir /data
mkdir /data/mysql-A
```

Logamos no Mysql:

```bash
docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql-A -d -p 3306:3306 --volume=/data:/var/lib/mysql mysql

mysql -u root -p --protocol=tcp --port=3306
```

Criamos um banco de dados exemplo:

```mysql
CREATE TABLE alunos (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(150),
    Cidade varchar(50)
);

INSERT INTO alunos (AlunoID, Nome, Sobrenome, Endereco, Cidade) VALUES (1, 'Carlos Alberto', 'da Silva', 'Av. que sobe e desce que ninguém conhece', 'Manaus');
```

Mesmo se excluirmos o banco por este comando, ele estará na pasta que definimos:

```bash
docker rm mysql-A
 ls /data/mysql-A
 aula            binlog.000003   client-cert.pem      ib_buffer_pool  '#innodb_temp'   performance_schema   server-key.pem
 auto.cnf        binlog.index    client-key.pem       ibdata1          mysql           private_key.pem      sys
 binlog.000001   ca-key.pem     '#ib_16384_0.dblwr'   ibtmp1           mysql.ibd       public_key.pem       undo_001
 binlog.000002   ca.pem         '#ib_16384_1.dblwr'  '#innodb_redo'    mysql.sock      server-cert.pem      undo_002
```
## Na prática

### Sintaxe

```bash
#sintaxe
#docker run 
#-dti onde -d para rodar em background, -t para rodar em tty e -i para modo interativo
#--name para nomear o container
#--mount type para o tipo, que pode ser bind ou volume
#src é a pasta de origem
#dst é a pasta de destino
#por fim a imagem que usamos de modelo, que no caso é o debian
```
## Tipo Bind

```bash
docker run -dti --mount type=bind,src=/data/debian-A,dst=/data debian
docker exec -ti nome_container bash
#criar com modo de somente leitura
docker run -dti --mount type=bind,src=/data/debian-A,dst=/data,ro debian
```

## Mount do tipo bind

Criamos um diretório abaixo para nosso novo destino:

```bash
mkdir /data
mkdir /data/mysql-A
```

Logamos no Mysql:

```bash
docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql-A -d -p 3306:3306 --volume=/data:/var/lib/mysql mysql

mysql -u root -p --protocol=tcp --port=3306
```

Criamos um banco de dados exemplo:

```mysql
CREATE TABLE alunos (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(150),
    Cidade varchar(50)
);

INSERT INTO alunos (AlunoID, Nome, Sobrenome, Endereco, Cidade) VALUES (1, 'Carlos Alberto', 'da Silva', 'Av. que sobe e desce que ninguém conhece', 'Manaus');
```

Mesmo se excluirmos o banco por este comando, ele estará na pasta que definimos:

```bash
docker rm mysql-A
 ls /data/mysql-A
 aula            binlog.000003   client-cert.pem      ib_buffer_pool  '#innodb_temp'   performance_schema   server-key.pem
 auto.cnf        binlog.index    client-key.pem       ibdata1          mysql           private_key.pem      sys
 binlog.000001   ca-key.pem     '#ib_16384_0.dblwr'   ibtmp1           mysql.ibd       public_key.pem       undo_001
 binlog.000002   ca.pem         '#ib_16384_1.dblwr'  '#innodb_redo'    mysql.sock      server-cert.pem      undo_002
```

## Mount do tipo named

Podemos criá-lo manualmente pelo comando:

```bash
docker volume create nome-do-volume
```

Ele serão criados no diretório padrão:

```bash
/var/lib/docker
```

No mount do tipo bind, precisamos informar o diretório criado e o diretório padrão. No tipo named, podemos referenciá-lo pelo nome:

```bas
docker run -v mysql_data:/containerdir mysql
```

## Mount to tipo volume

Parece com tipo named, porém não precisa especificar o nome. Mais voltado para dados persistentes.

## Criando rede

```bash
docker network create minha-rede
docker run -dit --name Ubuntu-B --network minha-rede  ubuntu
```

## Criando arquivo de configuração

Criamos o arquivo dockerfile para criar um script de configuração ao rodar uma imagem.

```bash
#criando a imagem
docker run -dti --name ubuntu-python ubuntu
docker exec -ti ubuntu bash
nano app.py
```

```python
nome = input('qual o seu nome')
print(nome)
```

```bash
#imagem
FROM ubuntu
#comandos a rodar
#atualizar, instalar o python e limpar arquivos temporários
RUN apt update && apt install -у python3 && apt clean
#copiar arquivo python
COPY app.py /opt/app.py
#executar arquivo
CMD python3 /opt/app.py
```

E rodar o dockerfile pelo comando docker build. Com isso, será gerado o script acima de acordo com a imagem criada

```bash
#rodando o dockerfile na imagem criada
docker build . -t ubuntu-python
```

Além disso, conseguimos usar esta imagem como modelo para criar outra:

```bash
#imagem que criamos com o python instalado
docker run -ti --name meu-app ubuntu-python
```
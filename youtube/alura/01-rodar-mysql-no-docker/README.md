# Vídeo

[![Como rodar MySQL com Docker? #AluraMais](https://i.ytimg.com/vi/S9BbUxmFaQI/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCQUV6IHd_JW2IqsdAAGbZZh9aBYA)](https://www.youtube.com/watch?v=S9BbUxmFaQI)

# Comandos

```docker
# listar containers
docker container ls

# criar container na pasta de exemplo C:\docker-mysql
docker run -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v C:\docker-mysql:/var/lib/mysql mysql

# pega o id do container
docker inspect

# rodar mysql id fb15aced33f2
docker exec -it fb15aced33f2 bash

# comando no bash
winpty docker exec -it fb15aced33f2 bash

# iniciar o mysql
mysql -u root

# deletar container
docker rm fb15aced33f2 --force
```

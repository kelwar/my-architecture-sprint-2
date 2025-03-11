# pymongo-api

## Как запустить

Переходим в нужную директорию. Например, для sharding-repl-cache это:

```shell
cd sharding-repl-cache
```

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Инициализируем инстансы конфигурационного сервера и шардов

```shell
./scripts/init.sh
```

Инициализируем роутер и наполняем БД данными

```shell
./scripts/router-init.sh
```


## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs

## Доступные скрипты

Скрипт для проверки количества документов в shard1

```shell
./scripts/shard1-collection-count.sh
```

Скрипт для проверки количества документов в shard2

```shell
./scripts/shard2-collection-count.sh
```

Скрипт для проверки суммарного количества документов в БД

```shell
./scripts/router-collection-count.sh
```
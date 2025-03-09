#!/bin/bash

###
# Подключаемся к шарду и получаем количество элементов в коллекции
###

docker compose exec -T shard2 mongosh --port 27019 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
EOF
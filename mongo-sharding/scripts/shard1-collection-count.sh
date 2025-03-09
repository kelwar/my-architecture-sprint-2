#!/bin/bash

###
# Подключаемся к шарду и получаем количество элементов в коллекции
###

docker compose exec -T shard1 mongosh --port 27018 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
EOF
#!/bin/bash

###
# Подключаемся к роутеру и получаем суммарное количество элементов в коллекции на всех шардах
###

docker compose exec -T mongos_router mongosh --port 27017 --quiet <<EOF
use somedb
db.helloDoc.countDocuments()
EOF
#!/bin/bash

###
# Инициализируем шард 2
###

docker compose exec -T shard2_1 mongosh --port 27019 --quiet <<EOF
rs.initiate(
    {
      _id : "shard2",
      members: [
        { _id : 0, host : "shard2_1:27019" },
        { _id : 1, host : "shard2_2:27019" },
        { _id : 2, host : "shard2_3:27019" }
      ]
    }
)
EOF


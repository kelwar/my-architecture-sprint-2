#!/bin/bash

###
# Вызываем последовательно инициализирующие скрипты
###

cd scripts || exit
./configSrv-init.sh
./shard1-init.sh
./shard2-init.sh
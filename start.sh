#!/bin/bash
cd img_proxy && docker build -t web_proxy1 . && cd ..
    echo "Создан прокси"
	sleep 5
cd img_web1 && docker build -t web_server1 . && cd ..
    echo "Создан web1"
	sleep 5
cd img_web2 && docker build -t web_server2 . && cd ..
    echo "Создан web2"
	sleep 5
cd img_web3 && docker build -t web_server3 . && cd ..
    echo "Создан web3"
	sleep 5
docker-compose up  #Сокет должен быть свободен
echo "Надо выполнить docker-compose down"

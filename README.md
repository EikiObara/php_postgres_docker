# how to use

## build image
docker-compose.exe build

## background execution
docker-compose.exe up -d

## confirm process
docker ps -a

## how to connect each process

### web process
docker-compose.exe exec web bash

### DB process
docker-compose.exe exec db bash

#### connect to db  (at db process)
psql -Utest_user test_db

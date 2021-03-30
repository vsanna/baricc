docker-compose up -d
docker-compose exec app bash

# アセンブラを渡す
cc -o main main.c
./main 123
cc -o tmp tmp.s
./tmp
echo $?

# テスト
bash -x ./test.sh
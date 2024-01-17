docker build -t my-mysql-image .

docker run --name mysql-icd -e MYSQL_ROOT_PASSWORD=mysecretpassword -p 3306:3306 -d my-mysql-image

docker exec -it mysql-container mysql -u root -p

https://dev.mysql.com/doc/refman/8.0/en/docker-mysql-getting-started.html

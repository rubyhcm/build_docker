docker build -t test_psql .

docker run --name postgres-icd -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=mypassword -p 5432:5432 -d test_psql

docker exec -it postgres-icd psql -U postgres


docker exec -it pgsql-dev bash
psql -h localhost -U postgres

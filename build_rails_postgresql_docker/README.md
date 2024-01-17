docker build -t rails-toolbox .

docker run -it -v $PWD:/opt/app rails-toolbox rails new --skip-bundle drkiq

docker compose up --build

https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application

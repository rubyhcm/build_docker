docker build -t rails-docker -f Dockerfile.rails .

docker run -it -v $PWD:/opt/app --env-file .env rails-docker
#old ==> docker run -it -v $PWD:/opt/app rails-docker rails new --skip-bundle rails_app -d=postgresql

docker compose up --build

https://semaphoreci.com/community/tutorials/dockerizing-a-ruby-on-rails-application

NOTE: Neu muon su dung .env thi phai vao docker chay: gem install dotenv-rails va add gem 'dotenv-rails' vao Gemfile va chay bundle

Docker note:
	1. Nếu sử dụng docker-compose thì muốn kết nối nội bộ trong compose đó ta sử dụng thông qua docker-container-name
	2. Nếu muốn từ 1 docker-compose gọi ra container bên ngoài thì dùng địa chỉ IP ( địa chỉ mạng )

Khi chạy mysql trên docker nếu bị lỗi kết nối dbeaver thì có thể sử dụng jdbc:mysql://localhost:3306/?allowPublicKeyRetrieval=true

<!-- docker exec rails-web-1 rake db:create -->
https://www.youtube.com/watch?v=ISv22NNL-aE
https://dev.to/alexmercedcoder/1-backend-5-frontends-todo-list-with-rails-react-angular-vue-svelte-and-jquery-18kp

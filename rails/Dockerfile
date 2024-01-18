# Dockerfile development version
FROM ruby:latest AS rails_app-development

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn

# Default directory
ENV INSTALL_PATH /opt/app
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

# change app name here
COPY rails_app/ .

# Set permissions for the app directory
RUN chmod -R 777 $INSTALL_PATH

RUN rm -rf node_modules vendor
RUN gem install rails bundler
RUN bundle install
RUN yarn install

# Start server with Puma
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]

FROM ruby:3.2.2 as rails-phonebook

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY phonebook/ .
RUN gem install rails bundler
RUN bundle install

CMD bundle exec puma
FROM ruby:2.3
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

RUN bundle exec rake db:migrate

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

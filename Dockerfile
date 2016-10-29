FROM ruby:2.3
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

RUN bundle exec rake db:drop && \
	bundle exec rake db:reset && \
	bundle exec rake db:migrate

EXPOSE 9292
CMD ["rackup", "-o", "0.0.0.0"]

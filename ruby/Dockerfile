FROM ruby:2.6 

WORKDIR /usr/src/app

COPY Gemfile ./

RUN bundle install

COPY . .

CMD ["./openweatherapi.rb"]


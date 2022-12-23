FROM ruby:3.1

RUN mkdir /app
WORKDIR /app
COPY Gemfile ./
RUN gem install bundler
RUN bundle install
COPY . .

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb"]

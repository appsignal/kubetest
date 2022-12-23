FROM ruby:3.1

RUN mkdir /app
WORKDIR /app
COPY Gemfile ./
RUN gem install bundler
RUN bundle install
COPY . .

ARG revision
ENV APP_REVISION=$revision

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb"]

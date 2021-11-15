FROM ruby:2.7.4

WORKDIR /site

COPY Gemfile /site

RUN bundle install

COPY . /site

CMD ["bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "4000"]
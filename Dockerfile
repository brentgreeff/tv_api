FROM ruby:2.6.5

LABEL maintainer="email@brentgreeff.com"

RUN apt-get update -yqq && apt-get install -yqq vim

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install --quiet

COPY . /usr/src/app/

CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]

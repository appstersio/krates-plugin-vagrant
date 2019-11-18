FROM ruby:2.4.1

WORKDIR /src/app

ADD . .

RUN apt update -y && apt install -y vagrant && gem update --system 3.0.4 && bundle install

ENTRYPOINT [ "/bin/bash" ]
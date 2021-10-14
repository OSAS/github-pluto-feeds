FROM debian:latest

RUN apt update
RUN apt install -y build-essential ruby-bundler libcurl4-openssl-dev zlib1g-dev ruby-dev libsqlite3-dev
COPY Gemfile .
RUN bundle install

COPY fetch_feeds.sh /fetch_feeds.sh
RUN chmod 0755 /fetch_feeds.sh
ENTRYPOINT ["/fetch_feeds.sh"]


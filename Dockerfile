FROM debian:latest

RUN apt update
RUN apt install -y build-essential ruby-bundler libcurl4-openssl-dev zlib1g-dev ruby-dev libsqlite3-dev

ADD fetch_feeds.sh Gemfile /srv/pluto/
RUN cd /srv/pluto/ && bundle install

RUN chmod 0755 /srv/pluto/fetch_feeds.sh
ENTRYPOINT ["/srv/pluto/fetch_feeds.sh"]


FROM quay.io/centos/centos:stream8

RUN dnf install -y ruby-devel rubygems-devel gcc-c++ curl-devel rubygem-bundler patch zlib-devel redhat-rpm-config openssl make sqlite-devel

ADD fetch_feeds.sh Gemfile /srv/pluto/
RUN cd /srv/pluto/ && bundle install

RUN chmod 0755 /srv/pluto/fetch_feeds.sh
ENTRYPOINT ["/srv/pluto/fetch_feeds.sh"]


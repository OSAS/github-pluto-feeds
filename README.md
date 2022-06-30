# Fetch Pluto Feeds

This is a GitHub action used to fetch RSS feeds using Pluto.

This action only updates the feeds information based on the
`planet.ini` configuration. The Pluto project provides script that can be
used to generate web pages for various static generators.

We made [another action](https://github.com/OSAS/github-pluto-moderate-posts.git)
that creates moderated feeds for Jekyll. Each post is transformed into a PR
that the website maintainers can then merge or reject (close).

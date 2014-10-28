FROM nabeken/docker-hugo:latest
MAINTAINER TANABE Ken-ichi <nabeken@tknetworks.org>

ENV GIT_REPO -
ENV HUGO_DIR /var/cache/hugo

WORKDIR /var/cache/hugo

COPY ./run /usr/local/bin/run

RUN chown www-data:www-data -R $HUGO_DIR
USER www-data

ENTRYPOINT ["run"]

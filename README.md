# docker-hugo-server

HUGO container with using [slugbuilder pattern](https://devcenter.heroku.com/articles/slug-compiler).

You can launch a hugo server from tarball via stdin or from git repository.

BASEURL is determined from hostname in the container.

```
$ docker run -it --rm -p 1313:1313 -h docker -e GIT_REPO=https://github.com/spf13/spf13.com.git nabeken/docker-hugo-server
```

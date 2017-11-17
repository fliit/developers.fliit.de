# developers.fliit.de

This is Fliit's public API docs website, hosted at [developers.fliit.de](https://developers.fliit.de).

# Project Structure

* [Swagger v2 specification](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md)
* [ReDoc API doc generator](https://github.com/Rebilly/ReDoc)

## Run the docs locally with ReDoc

Run any local server one-liner on the root of this repo, such as:

    $ ruby -run -e httpd . -p 9090
    OR
    $ python -m http.server 9090
    OR
    $ npm install -g node-static   # install dependency
    $ static -p 9090
    OR
    $ php -S 127.0.0.1:9090
    OR
    https://gist.github.com/willurd/5720255

And open your browser at `http://localhost:9090`

## Alternatively, run the docs locally with Swagger UI

    $ docker pull swaggerapi/swagger-ui
    $ docker run -p 9091:8080 -e SWAGGER_JSON=/bar/swagger.yml -v /path-to-this-repo:/bar swaggerapi/swagger-ui

Open http://0.0.0.0:9091 on your browser.

## ReDoc dependency

Right now we are downloading the release file directly from Github and storing on version control directly instead of using a package manager.

[Follow ReDoc releases for updates](https://github.com/Rebilly/ReDoc/releases)

## Other important links:

* https://swagger.io/docs/specification/2-0/basic-structure/
* https://editor.swagger.io/

&copy; 2017 Fliit. Licensed under terms of Apache License v2

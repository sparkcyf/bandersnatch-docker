FROM python:3.9-alpine

RUN apk add --update --no-cache --virtual .build-deps \
        g++ \
        bash \
        python3-dev \
        git \
        libxml2 \
        libxml2-dev && \
    apk add libxslt-dev
RUN pip3 install pip==20.2.4
RUN pip3 install git+https://github.com/pypa/bandersnatch@main
CMD /bin/bash

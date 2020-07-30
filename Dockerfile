FROM alpine:3.12.0

RUN apk add --no-cache --virtual build-dependencies \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    build-base \
    dtc \
    git \
    py3-setuptools \
    python3-dev \
    gettext-doc \
    gettext-dev \
    tk \
    bash \
    boost-python3 \
    boost-dev

ADD https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py .

RUN /usr/bin/python3 ./litex_setup.py init
RUN /usr/bin/python3 ./litex_setup.py install


FROM python:3.6.4-stretch
MAINTAINER Petr Jurasek

ENV DRAWIOBATCH_VERSION 8.2.2
ENV PHANTOMJS_VERSION 2.1.1

RUN cd /tmp  \
    && wget https://github.com/languitar/drawio-batch/archive/${DRAWIOBATCH_VERSION}.tar.gz \
    && tar xfvz ${DRAWIOBATCH_VERSION}.tar.gz \
    && cd drawio-batch-${DRAWIOBATCH_VERSION} \
    && python3 setup.py install \
    && cd /tmp \
    && wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
    && tar xfvj phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 \
    && mv phantomjs-${PHANTOMJS_VERSION}-linux-x86_64/bin/phantomjs /usr/bin/phantomjs \
    && chmod +x /usr/bin/phantomjs \
    && rm -rf /tmp/* 

RUN mkdir /code
WORKDIR /code 

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
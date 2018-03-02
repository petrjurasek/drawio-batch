FROM python:3.6.4-stretch
MAINTAINER Petr Jurasek

RUN cd /tmp  \
    && wget https://github.com/languitar/drawio-batch/archive/8.2.2.tar.gz \
    && tar xfvz 8.2.2.tar.gz \
    && cd drawio-batch-8.2.2 \
    && python3 setup.py install \
    && cd /tmp \
    && wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && tar xfvj phantomjs-2.1.1-linux-x86_64.tar.bz2 \
    && mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs \
    && chmod +x /usr/bin/phantomjs \
    && rm -rf /tmp/* 

RUN mkdir /code
WORKDIR /code 

COPY docker-entrypoint.sh /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
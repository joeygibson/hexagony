FROM jeanblanchard/alpine-glibc

RUN apk update && apk add curl bash unzip ruby --purge
RUN mkdir /opt && cd /opt \
    && curl -skLO https://github.com/m-ender/hexagony/archive/master.zip \
    && unzip master.zip \
    && rm master.zip

WORKDIR /work

ENTRYPOINT ["ruby", "/opt/hexagony-master/interpreter.rb"]




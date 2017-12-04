from alpine:edge
maintainer zerosign <r1nlx0@gmail.com>

ENV LANG C.UTF-8
ENV SBT_VERSION 1.0.4

ENV PATH="/opt/sbt/bin:$PATH"

RUN set -x && apk add --no-cache openjdk8-jre

RUN mkdir -p /opt
RUN wget -c https://github.com/sbt/sbt/releases/download/v1.0.4/sbt-1.0.4.zip -O sbt.zip 2> /dev/null
RUN unzip sbt.zip 'sbt/*' -d /opt/
RUN rm -rf sbt.zip

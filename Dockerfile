FROM openjdk:8-slim

ENV PRESTO_VERSION 0.215

RUN apt-get update && \
      apt-get install -y curl python tar build-essential && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* && \
      curl -L https://repo1.maven.org/maven2/com/facebook/presto/presto-server/${PRESTO_VERSION}/presto-server-${PRESTO_VERSION}.tar.gz | tar zx -C /usr/local && \
      ln -s /usr/local/presto-server-${PRESTO_VERSION} /usr/local/presto && \
      mkdir -p /var/presto/data

ARG LAUNCH_TYPE
ARG LISTEN_PORT

ADD ${LAUNCH_TYPE}/etc/ /usr/local/presto/etc/

EXPOSE ${LISTEN_PORT}

CMD ["/usr/local/presto/bin/launcher", "run"]

FROM alpine:latest

COPY ./config /tmp/config
COPY ./data /tmp/data
COPY ./1000-load-config.sh /etc/load-config.sh

RUN apk add bash openldap openldap-back-mdb openldap-clients

CMD bash -c '/etc/load-config.sh'

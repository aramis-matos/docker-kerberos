FROM osixia/openldap:2.6.10-alpha

USER root

COPY ./certs /container/services/openldap/assets/certs 

RUN chmod -R 777 /container/services/openldap/assets/certs && \
    apk add --no-cache \
    cyrus-sasl-gssapiv2 \
    krb5

USER ldap


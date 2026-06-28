#!/bin/bash

LDAP_HOST="ldap://openldap:3890"

find /tmp/data -type f | while read -r ldif; do
  ldapadd -H "$LDAP_HOST" -D "cn=admin,dc=example,dc=local" -w "${LDAP_PASSWORD}" -f "$ldif" -c
done

find /tmp/config -type f | while read -r ldif; do
  ldapadd -D "cn=admin,cn=config" -w "${LDAP_PASSWORD}" -H "$LDAP_HOST" -f "$ldif"
done

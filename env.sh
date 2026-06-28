#!/bin/bash
export HOST_HOSTNAME="$(hostname)"
export HOST_USER="$USER"
# translates to testing-pass#1
export LDAP_PASSWORD='testing-pass#1'
export LDAP_PASSWORD_HASHED='{ARGON2}$argon2id$v=19$m=7168,t=5,p=1$zbJGngwqiFcdJxMQtwuB/g$aqsawDWRPDGloX/2IWLvALLOT956v25AwelwkH0U4ZQ'

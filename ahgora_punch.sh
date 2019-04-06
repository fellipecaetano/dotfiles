#!/bin/sh

AHGORA_ACCOUNT="147"
AHGORA_PASSWORD="0603"
AHGORA_IDENTITY="ed798153c546fdc15a5176bec21e6573"

curl -X POST \
  -F "account=$AHGORA_ACCOUNT" \
  -F "password=$AHGORA_PASSWORD" \
  -F "identity=$AHGORA_IDENTITY" \
  https://www.ahgora.com.br/batidaonline/verifyIdentification

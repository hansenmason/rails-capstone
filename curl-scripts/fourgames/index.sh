#!/bin/bash

curl "http://localhost:4741/fourgames" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

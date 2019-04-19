#!/bin/bash

curl "http://localhost:4741/fourgames/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "id": "'"${ID}"'"
    }
  }'

echo

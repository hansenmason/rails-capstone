#!/bin/bash

curl "http://localhost:4741/games/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "game": {
      "pico": "'"${PICO}"'",
      "fumi": "'"${FERMI}"'",
      "bagel": "'"${BAGEL}"'",
      "number": "'"${NUMBER}"'",
      "id": "'"${ID}"'"
    }
  }'

echo

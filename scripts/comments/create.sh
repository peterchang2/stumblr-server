#!/bin/bash

API="http://localhost:4741"
URL_PATH="/posts/${P_ID}/comments"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "comment": {
      "text": "'"${TEXT}"'",
      "post": "'"${P_ID}"'"
    }
  }'

echo

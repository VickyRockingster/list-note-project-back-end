curl "http://localhost:4741/errands" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "errand": {
      "errand_name": "'"${ERRAND}"'",
      "location": "'"${LOCATION}"'",
      "due_date": "'"${DUE_DATE}"'",
      "due_time": "'"${DUE_TIME}"'",
      "done_status": "'"${STATUS}"'"
    }
  }'

echo

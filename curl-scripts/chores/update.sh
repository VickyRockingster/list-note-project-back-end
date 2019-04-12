curl "http://localhost:4741/chores/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "errand": {
      "chore_name": "'"${ERRAND}"'",
      "due_date": "'"${DATE}"'",
      "due_time": "'"${TIME}"'",
      "done_status": "'"${STATUS}"'"
    }
  }'

echo

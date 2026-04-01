source ./before_request.sh

curl -k -u "${USERNAME}:${OPENSEARCH_PASSWORD}" \
  -X POST "${OPENSEARCH_URL}/myindex/_search?pretty" \
  -H "Content-Type: application/json" \
  -d '{
    "query": {
      "match": {
        "status": "ACTIVE"
      }
    }
  }'


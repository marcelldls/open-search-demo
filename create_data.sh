source ./before_request.sh

curl -k -u "${USERNAME}:${OPENSEARCH_PASSWORD}" \
  -X POST "${OPENSEARCH_URL}/${INDEX_NAME}/_doc" \
  -H "Content-Type: application/json" \
  -d '{
    "id": "123",
    "message": "Hello OpenSearch",
    "status": "ACTIVE",
    "created_at": "2026-04-01T12:30:00Z"
  }'

source $(dirname "$0")/before_request.sh

curl -k -u "${USERNAME}:${OPENSEARCH_PASSWORD}" \
  -X PUT "${OPENSEARCH_URL}/${INDEX_NAME}" \
  -H "Content-Type: application/json" \
  -d '{
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0
    },
    "aliases": {
        "myindex": {}
    }
  }'

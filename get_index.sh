source ./before_request.sh

curl -k -u "${USERNAME}:${OPENSEARCH_PASSWORD}" \
  -X GET "${OPENSEARCH_URL}/myindex" \

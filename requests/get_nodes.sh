source $(dirname "$0")/before_request.sh

curl -k -u "${USERNAME}:${OPENSEARCH_PASSWORD}" \
  -X GET "${OPENSEARCH_URL}/_nodes/http" \

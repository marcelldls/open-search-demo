set -euo pipefail
set -a
source .env
set +a

OPENSEARCH_URL="https://localhost:9200"
INDEX_NAME="myindex_v1"
USERNAME="admin"

#!/bin/sh

curl -X POST \
  -H 'Content-type: application/json' \
  -d '{"build_number":${DRONE_BUILD_NUMBER},"repo_namespace":"${DRONE_REPO_NAMESPACE}", "repo_name":"${DRONE_REPO_NAME}"}' \
  ${PLUGIN_URL}

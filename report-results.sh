#! /usr/bin/env bash

URL="${URL:-https://www.whoisflakiest.dev/api/v1/reports}"

for file in "${WIF_PATH_TO_REPORTS_DIR}"/*.xml; do
    echo "Submitting report ${file}"
    curl \
        -H "Authentication: Token ${WIF_API_TOKEN}" \
        -F "junit_report=@${file}" \
        -F "github_context_base64=${1}" \
        "${URL}"
done

exit 0

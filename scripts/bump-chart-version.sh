#!/bin/bash
set -euo pipefail

CHART_FILE="charts/uptime-kuma/Chart.yaml"

# Get the current version from Chart.yaml
CURRENT_VERSION=$(grep '^version:' "${CHART_FILE}" | awk '{print $2}')

# Bump the patch version
NEW_VERSION=$(echo "${CURRENT_VERSION}" | awk -F. -v OFS=. '{$3++; print}')

echo "Bumping chart version from ${CURRENT_VERSION} to ${NEW_VERSION}"

# Update the Chart.yaml file
sed -i.bak "s/^version: .*/version: ${NEW_VERSION}/" "${CHART_FILE}"
rm "${CHART_FILE}.bak"
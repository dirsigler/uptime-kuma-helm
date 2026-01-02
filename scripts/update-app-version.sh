#!/bin/bash
set -euo pipefail

VALUES_FILE="charts/uptime-kuma/values.yaml"
CHART_FILE="charts/uptime-kuma/Chart.yaml"

IMAGE_TAG=$(grep 'tag:' "$VALUES_FILE" | awk '{print $2}' | tr -d '"')
APP_VERSION=$(echo "$IMAGE_TAG" | cut -d- -f1)

sed -i.bak "s/^appVersion: .*/appVersion: \"$APP_VERSION\"/" "$CHART_FILE"
rm "$CHART_FILE.bak"

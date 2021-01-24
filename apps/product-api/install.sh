#! /usr/bin/env bash

set -euo pipefail

kapp deploy -a product-api -f <(ytt --data-values-env=YTT_HOMELAB \
-f virtualservice.yml \
-f deployment.yml \
-f services.yml \
-f namespace.yml \
-f values.yaml)



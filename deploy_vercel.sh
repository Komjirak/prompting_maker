#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   VERCEL_TOKEN=xxx ./deploy_vercel.sh
# or interactive login if token is omitted.

if ! command -v vercel >/dev/null 2>&1; then
  echo "[info] vercel CLI not found. Trying standalone installer..."
  curl -fsSL https://raw.githubusercontent.com/vercel/vercel/main/packages/cli/install.sh | sh
  export PATH="$HOME/.vercel/bin:$PATH"
fi

if [[ -n "${VERCEL_TOKEN:-}" ]]; then
  vercel deploy --prod --yes --token "$VERCEL_TOKEN"
else
  vercel deploy --prod
fi

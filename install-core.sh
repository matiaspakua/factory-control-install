#!/usr/bin/env bash
# Factory Control · CORE init (v0.0.1)
# One-liner: curl -fsSL <raw-url>/install-core.sh | bash
# Or:        bash install-core.sh [-- init flags…]
set -euo pipefail

CORE_TGZ="${FACTORY_CORE_TGZ:-https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.1/factory-core-0.0.1.tgz}"

if ! command -v npx >/dev/null 2>&1; then
  echo "error: npx not found (need Node.js 22+)" >&2
  exit 1
fi

export npm_config_allow_remote=all
exec npx --yes "$CORE_TGZ" init "$@"

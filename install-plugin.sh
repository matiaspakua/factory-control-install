#!/usr/bin/env bash
# Factory Control · plugin install (v0.1.0)
# One-liner: curl -fsSL <raw-url>/install-plugin.sh | bash -s -- --ide none
# Or:        bash install-plugin.sh --ide none|vscode|cursor|both
set -euo pipefail

PLUGIN_TGZ="${FACTORY_PLUGIN_TGZ:-https://github.com/matiaspakua/factory-control-install/releases/download/v0.1.0/factory-plugin-0.1.0.tgz}"

if ! command -v npx >/dev/null 2>&1; then
  echo "error: npx not found (need Node.js 22+)" >&2
  exit 1
fi

if [[ $# -eq 0 ]]; then
  set -- --ide none
fi

export npm_config_allow_remote=all
exec npx --yes "$PLUGIN_TGZ" install "$@"

# mirrored assets: v0.1.0

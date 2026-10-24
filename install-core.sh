#!/usr/bin/env bash
# Factory Control · CORE init (v0.0.6-beta)
# One-liner: curl -fsSL <raw-url>/install-core.sh | bash
# Or:        bash install-core.sh [-- init flags…]
set -euo pipefail

CORE_TGZ="${FACTORY_CORE_TGZ:-https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.6-beta/factory-core-0.0.6-beta.tgz}"
PLUGIN_INSTALL_URL="${FACTORY_PLUGIN_INSTALL_URL:-https://raw.githubusercontent.com/matiaspakua/factory-control-install/main/install-plugin.sh}"

if ! command -v npx >/dev/null 2>&1; then
  echo "error: npx not found (need Node.js 22+)" >&2
  exit 1
fi

export npm_config_allow_remote=all
npx --yes "$CORE_TGZ" init "$@"

cat <<HINT

── Cliente (hoy · mirror; npm @beta aún no está publicado) ──
curl -fsSL ${PLUGIN_INSTALL_URL} | bash -s -- --ide none
# o: --ide vscode | cursor | both
HINT

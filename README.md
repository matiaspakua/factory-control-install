# Factory Control · install artifacts (beta)

Public mirror of the **v0.0.4-beta** release assets from the private [`aguvoda/factory-control`](https://github.com/aguvoda/factory-control) repository so anyone can install without GitHub auth or npm publish.

## Install (anonymous · one command each)

In the root of **your** product repo (Node.js 22+):

```bash
curl -fsSL https://raw.githubusercontent.com/matiaspakua/factory-control-install/main/install-core.sh | bash

curl -fsSL https://raw.githubusercontent.com/matiaspakua/factory-control-install/main/install-plugin.sh | bash -s -- --ide none
# or: --ide vscode | cursor
```

The scripts set `npm_config_allow_remote=all` (required by npm 12 for remote `.tgz`) and run `npx` against the release tarballs. Inspect them first if you prefer not to pipe to bash:

```bash
curl -fsSL -O https://raw.githubusercontent.com/matiaspakua/factory-control-install/main/install-core.sh
curl -fsSL -O https://raw.githubusercontent.com/matiaspakua/factory-control-install/main/install-plugin.sh
sh install-core.sh
sh install-plugin.sh --ide none
```

### Advanced (manual npx)

```bash
npm_config_allow_remote=all npx --yes \
  "https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.4-beta/factory-core-0.0.4-beta.tgz" \
  init

npm_config_allow_remote=all npx --yes \
  "https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.4-beta/factory-plugin-0.0.4-beta.tgz" \
  install --ide none
```

Or download the `.tgz` and use `npx --yes file:///path/to/….tgz …` (no `allow-remote` needed).

Source of truth and development: `aguvoda/factory-control` (private). This repo only hosts downloadable tarballs/VSIX and these install wrappers.

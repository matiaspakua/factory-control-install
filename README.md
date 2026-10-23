# Factory Control · install artifacts (beta)

Public mirror of the **v0.0.1** release assets from the private [`aguvoda/factory-control`](https://github.com/aguvoda/factory-control) repository so anyone can install without GitHub auth or npm publish.

## Install (anonymous)

```bash
npm_config_allow_remote=all npx --yes \
  "https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.1/factory-core-0.0.1.tgz" \
  init

npm_config_allow_remote=all npx --yes \
  "https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.1/factory-plugin-0.0.1.tgz" \
  install --ide none
```

npm 12 defaults `allow-remote=none`; the env var is required for remote tarball URLs. Alternative: `curl` + `npx file://`.

Source of truth and development: `aguvoda/factory-control` (private). This repo only hosts downloadable tarballs/VSIX.

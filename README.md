# Factory Control · install artifacts (beta)

Public mirror of the **v0.0.1** release assets from the private [`aguvoda/factory-control`](https://github.com/aguvoda/factory-control) repository so anyone can install without GitHub auth or npm publish.

## Install (anonymous)

```bash
curl -fsSL -o /tmp/factory-core-0.0.1.tgz \
  https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.1/factory-core-0.0.1.tgz \
  && npx --yes file:///tmp/factory-core-0.0.1.tgz init

curl -fsSL -o /tmp/factory-plugin-0.0.1.tgz \
  https://github.com/matiaspakua/factory-control-install/releases/download/v0.0.1/factory-plugin-0.0.1.tgz \
  && npx --yes file:///tmp/factory-plugin-0.0.1.tgz install
```

Source of truth and development: `aguvoda/factory-control` (private). This repo only hosts downloadable tarballs/VSIX.

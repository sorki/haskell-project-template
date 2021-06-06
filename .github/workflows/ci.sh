#!/usr/bin/env bash
# based on https://github.com/colah/ImplicitCAD/pull/377/files by @fisx

set -eo pipefail
cd "$( dirname "${BASH_SOURCE[0]}" )"

echo "regenerating .github/workflows/ci.yaml..."

# based on https://github.com/vmchale/github-actions-dhall
test -x $HOME/.cabal/bin/yaml-to-dhall || cabal install dhall-yaml
dhall-to-yaml --file ci.dhall > ci.yaml

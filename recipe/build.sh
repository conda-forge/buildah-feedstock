#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

make \
  GIT_COMMIT= \
  PREFIX="${PREFIX}" \
  bin/buildah docs

make \
  GIT_COMMIT= \
  PREFIX="${PREFIX}" \
  install install.completions

go-licenses save . --save_path=license-files

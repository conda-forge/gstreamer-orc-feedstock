#!/bin/bash
set -euo pipefail

meson setup buildir ${MESON_ARGS} --prefix=${PREFIX} --libdir=lib
ninja -C buildir
ninja -C buildir install

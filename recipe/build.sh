#!/bin/bash
set -eo pipefail

meson setup buildir ${MESON_ARGS} --buildtype=release --prefix=${PREFIX} -Dlibdir=lib
ninja -C buildir
ninja -C buildir install

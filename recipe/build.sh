#!/bin/bash
set -euo pipefail

meson buildir
meson configure buildir --prefix=${PREFIX} --libdir=${PREFIX}/lib --includedir=${PREFIX}/include
ninja -C buildir
ninja -C buildir install

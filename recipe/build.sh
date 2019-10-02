#!/bin/bash
set -euo pipefail

meson setup buildir --prefix=${PREFIX} --libdir=${PREFIX}/lib
ninja -C buildir
ninja -C buildir install

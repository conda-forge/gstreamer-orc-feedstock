#!/bin/bash
set -euo pipefail

meson buildir
meson configure buildir -Dprefix=${PREFIX} -Dlibdir=${PREFIX}/lib
ninja -C buildir
ninja -C buildir install

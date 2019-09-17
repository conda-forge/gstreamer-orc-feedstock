#!/bin/bash
set -euo pipefail

meson setup buildir --prefix=${PREFIX}
ninja -C buildir
ninja -C buildir install

#!/usr/bin/env bash
set -e
cmake -B build-nx -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_TOOLCHAIN_FILE=/opt/devkitpro/cmake/Switch.cmake \
  -DCMAKE_PREFIX_PATH=/opt/devkitpro/portlibs/switch/lib/cmake \
  -GNinja
cmake --build build-nx --target SpaceCadetPinball_nro
cp build-nx/SpaceCadetPinball.nro .

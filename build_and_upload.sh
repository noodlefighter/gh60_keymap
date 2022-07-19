#!/bin/bash

set -o nounset
set -o errexit

SHELL_DIR=$(cd "$(dirname "$0")";pwd)
cd $SHELL_DIR

make -C ./tmk_keyboard/keyboard/gh60 KEYMAP=noodlefighter
cp ./tmk_keyboard/keyboard/gh60/gh60_lufa.hex ./
./tkg-toolkit/linux/script/reflash-dfu.sh ./gh60_lufa.hex

#!/usr/bin/env bash
set -e

SOURCE=${BASH_SOURCE[0]}
DIR_OF_THIS_SCRIPT="$( dirname "$SOURCE" )"
ABS_DIR_OF_SCRIPT="$( realpath $DIR_OF_THIS_SCRIPT )"
mkdir -p ~/.vmodules/freeflowuniverse
rm -f ~/.vmodules/freeflowuniverse/webcomponents
ln -s $ABS_DIR_OF_SCRIPT/webcomponents ~/.vmodules/freeflowuniverse/webcomponents



echo "INSTALL OK"


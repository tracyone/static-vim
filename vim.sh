#!/bin/sh
vimdir=$(dirname "$(readlink -f "$0")")
VIMRUNTIME="$vimdir/runtime"
MYVIMRC="${vimdir}/../vim_config/vimrc"
VIMFILES="${vimdir}/../vim_config"
export VIMRUNTIME
export MYVIMRC
export VIMFILES
exec "$vimdir/vim" --cmd  'set rtp+=$VIMFILES' -u ${MYVIMRC} "$@"

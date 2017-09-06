#!/usr/bin/env zsh

setopt EXTENDED_GLOB

for rcfile in $(pwd)/prezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

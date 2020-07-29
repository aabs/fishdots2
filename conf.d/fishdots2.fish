#!/usr/bin/env fish

set -q fd2_log_level || fd2_log_level 2

fd2_runifexists $HOME/pre-local.fish
fd2_runifexists $HOME/(hostname).pre-local.fish

fd2_runifexists $HOME/post-local.fish
fd2_runifexists $HOME/(hostname).post-local.fish

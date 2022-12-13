#!/bin/bash

cat > $HOME/.bash_aliases << EOF
alias sss='export {http,https}_proxy="http://10.0.2.2:1080"'
alias uss='unset {http,https}_proxy'
EOF

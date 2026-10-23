# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
#

sanchezProtocol() {
    ~/repos/protocol_sanchez/sanchez_env/bin/python ~/repos/protocol_sanchez/main.py
}

alias safe='sanchezProtocol'

githubSSH() {
    eval $(ssh-agent)
    ssh-add ~/.ssh/ghub
}

alias gss='githubSSH'

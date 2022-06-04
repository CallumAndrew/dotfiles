# Autoloads and completion
autoload -Uz compinit vcs_info
compinit

# Git branch
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' %b'

# Shell prompt
PS1='[%n@%m %1~$vcs_info_msg_0_]$ ' # [user@hostname pwd branch]$

# Aliases
alias grep="grep --color=auto"
alias ls="ls --color=auto"
alias ll="ls -lah"
alias mkdir="mkdir -p"

## Rclone Aliases
alias "onedrivepush"="rclone sync ~/OneDrive OneDrive:"
alias "onedrivepull"="rclone sync OneDrive: ~/OneDrive"

# GPG Pinentry
export GPG_TTY=$(tty)

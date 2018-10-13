# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

# this function may be required
function fish_title
  true
end

set -x GOPATH $HOME
set -x PATH $HOME"/.local/bin" $PATH
set -x PATH $HOME"/.pyenv/bin" $PATH
set -x PATH $HOME"/.yubikey/bin" $PATH
set -x PATH $GOPATH $PATH
set -x PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH
set -x PATH $HOME/".nodebrew/node/v9.11.1/bin" $PATH

set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

set -x PKG_CONFIG_PATH "/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"

set -U FZF_LEGACY_KEYBINDINGS 0

status --is-interactive; and . (pyenv init -|psub)
status --is-interactive; and . (pyenv virtualenv-init -|psub)
#status --is-interactive; and . (plenv init -|psub)

alias git hub

#set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias gi peco z tmux ghq spin fzf

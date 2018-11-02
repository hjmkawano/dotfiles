# emacs ansi-term support

set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias gi peco z tmux ghq spin fzf

#if test -n "$EMACS"
#  set -x TERM eterm-color
#end

# this function may be required
function fish_title
  true
end

set -x PATH $HOME"/.local/bin" $PATH
set -x PATH $HOME"/.yubikey/bin" $PATH

set -x GOPATH $HOME
set -x PATH $GOPATH $PATH

set -x PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH

set -x PATH $HOME/".nodebrew/node/v9.11.1/bin" $PATH
set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

set -U FZF_LEGACY_KEYBINDINGS 0

set -x PATH $HOME"/.pyenv/shims" $PATH
status --is-interactive; and . (pyenv init -|psub)

set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -g fish_user_paths "/usr/local/opt/nss/bin" $fish_user_paths

set -gx LDFLAGS "-L/usr/local/opt/nss/lib"
set -gx CPPFLAGS "-I/usr/local/opt/nss/include -I/usr/local/opt/zlib/include"
set -gx PKG_CONFIG_PATH "/usr/local/opt/nss/lib/pkgconfig:/usr/local/opt/zlib/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"

alias git hub

alias play-my-rock-list 'mpv --no-video --shuffle "https://www.youtube.com/playlist?list=PLvwAzdceyZtKzPv_EswzoRO0w1XFCW1m3"'
alias play-my-band-maid-list 'mpv --no-video --shuffle "https://www.youtube.com/playlist?list=PLvwAzdceyZtJXQXePGfYchiEUDkZLLjhr"'


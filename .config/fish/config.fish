# emacs ansi-term support
# if test -n "$EMACS"
  # set -x TERM eterm-color
# end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias gi peco z tmux ghq spin fzf

# this function may be required
function fish_title
  true
end

# alias git hub
# alias play-my-rock-list 'mpv --no-video --shuffle "https://www.youtube.com/playlist?list=PLvwAzdceyZtKzPv_EswzoRO0w1XFCW1m3"'
# alias play-my-band-maid-list 'mpv --no-video --shuffle "https://www.youtube.com/playlist?list=PLvwAzdceyZtJXQXePGfYchiEUDkZLLjhr"'
# alias parrot 'docker run -ti --network bridge parrotsec/parrot'


set -x GOPATH $HOME
set -x PATH $HOME"/.local/bin" $PATH
set -x PATH $HOME"/.yubikey/bin" $PATH
set -x PATH $GOPATH $PATH
set -x PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH
set -x PATH $HOME/".nodebrew/current/bin" $PATH

set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

set -x GHQ_SELECTOR fzf

set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
set -gx FZF_DEFAULT_OPTS '--inline-info --height 50% --border --margin=1,2'
set -gx FZF_TMUX 0
set -gx FZF_TMUX_HEIGHT 50%
set -U FZF_LEGACY_KEYBINDINGS 0

set -x PATH $HOME"/.pyenv/shims" $PATH
# status --is-interactive; and . (pyenv init -|psub)
# status --is-interactive; and . (rbenv init -|psub)

set -gx LDFLAGS "-L/usr/local/opt/imagemagick@6/lib -L/usr/local/opt/nss/li -L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/imagemagick@6/includ -I/usr/local/opt/nss/includ -I/usr/local/opt/zlib/include"
set -x PKG_CONFIG_PATH "/usr/local/opt/imagemagick@6/lib/pkgconfig:/usr/local/opt/nss/lib/pkgconfig:/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"

set -g fish_user_paths "/usr/local/opt/nss/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/texlive/2018/bin/x86_64-darwin" $fish_user_paths

set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

set -gx GNUPGHOME $HOME"/.gnupg"

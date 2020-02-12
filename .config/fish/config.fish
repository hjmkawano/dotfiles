# emacs ansi-term support
# if test -n "$EMACS"
  # set -x TERM eterm-color
# end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias z tmux ghq spin fzf

# this function may be required
function fish_title
  true
end

alias git hub
# alias parrot 'docker run -ti --network bridge parrotsec/parrot'
alias ps 'ps ax|fzf'


# set -x GOPATH $HOME
set -x PATH $HOME"/.local/bin" $PATH
set -x PATH $HOME"/bin" $PATH
set -x PATH $HOME"/.yubikey/bin" $PATH
# set -x PATH $GOPATH $PATH
set -x PATH "/usr/local/opt/coreutils/libexec/gnubin" $PATH
set -x PATH $HOME/".nodebrew/current/bin" $PATH
set -x PATH $HOME/"/Library/Python/3.7/bin" $PATH

set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

set -x GHQ_SELECTOR fzf

status --is-interactive; and source (anyenv init -|psub)
direnv hook fish | source

set -gx LDFLAGS "-L/usr/local/opt/imagemagick@6/lib -L/usr/local/opt/nss/lib -L/usr/local/opt/qt/lib -L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/imagemagick@6/includ -I/usr/local/opt/nss/include -I/usr/local/opt/qt/include -I/usr/local/opt/zlib/include"
set -x PKG_CONFIG_PATH "/usr/local/opt/imagemagick@6/lib/pkgconfig:/usr/local/opt/nss/lib/pkgconfig:/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"

set -g fish_user_paths "/usr/local/opt/nss/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/texlive/2018/bin/x86_64-darwin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 1
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

set -gx GNUPGHOME $HOME"/.gnupg"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

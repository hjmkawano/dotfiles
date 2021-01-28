# this function may be required
function fish_title
    true
end

set -x LANG en_US.UTF-8
set -x LC_CTYPE $LANG

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias z tmux ghq spin fzf

alias ps 'ps ax|fzf'

set -x LESSCHARSET utf-8
set -x GHQ_SELECTOR fzf

# anyenv and XXenv
status --is-interactive; and source (anyenv init -|psub)
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (nodenv init -|psub)
status --is-interactive; and source (goenv init -|psub)
status --is-interactive; and source (rbenv init -|psub)
set -x GOENV_DISABLE_GOPATH 1

eval (direnv hook fish)

set -g fish_user_paths "~/.local/bin" $fish_user_paths
set -g fish_user_paths "~/bin" $fish_user_paths
set -g fish_user_paths "/~.yubikey/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/Cellar/git/2.29.2/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/nss/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/qt/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/texlive/2018/bin/x86_64-darwin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/mysql-client@5.7/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/python@3.8/bin" $fish_user_paths

set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 2

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x GNUPGHOME $HOME"/.gnupg"
set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH

function vterm_printf;
    if [ -n "$TMUX" ]
        # tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end

if [ "$INSIDE_EMACS" = 'vterm' ]
    function clear
        vterm_printf "51;Evterm-clear-scrollback";
        tput clear;
    end
end

function fish_title
    hostname
    echo ":"
    pwd
end

# startship (https://starship.rs/)
starship init fish | source

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

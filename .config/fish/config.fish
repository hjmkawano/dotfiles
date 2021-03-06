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

alias psf 'ps ax|fzf'

fish_add_path /usr/local/opt/coreutils/libexec/gnubin
fish_add_path /usr/local/opt/openjdk/bin
fish_add_path /usr/local/opt/python/bin
fish_add_path /usr/local/opt/ruby/bin
fish_add_path /usr/local/lib/ruby/gems/3.0.0/bin
fish_add_path /usr/local/opt/mysql-client/bin
fish_add_path /usr/local/opt/sqlite/bin
fish_add_path /usr/local/opt/qt/bin
fish_add_path /usr/local/opt/nss/bin
fish_add_path /usr/local/opt/krb5/bin
fish_add_path /usr/local/opt/krb5/sbin
fish_add_path /usr/local/opt/libpq/bin
fish_add_path /usr/local/sbin
fish_add_path /~.yubikey/bin
fish_add_path ~/.local/bin
fish_add_path ~/bin

set -x LESSCHARSET utf-8
set -x GHQ_SELECTOR fzf
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_display_docker_machine yes
set -g fish_prompt_pwd_dir_length 3

set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -x GNUPGHOME $HOME"/.gnupg"
set -x MANPATH "/usr/local/opt/coreutils/libexec/gnuman" $MANPATH
set -x RIPGREP_CONFIG_PATH $HOME"/.ripgreprc"

# initialize direnv
direnv hook fish | source

# initialize anyenv and XXenv
status --is-interactive; and source (anyenv init -|psub)

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

# iTerm2 integration
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

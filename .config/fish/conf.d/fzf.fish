set -x FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'

set -x FZF_DEFAULT_OPTS '--inline-info --height 50% --border --margin=1,2'

set -x FZF_TMUX 0
set -q FZF_TMUX_HEIGHT; or set -U FZF_TMUX_HEIGHT "50%"

set -q FZF_LEGACY_KEYBINDINGS; or set -U FZF_LEGACY_KEYBINDINGS 0

set -q FZF_PREVIEW_FILE_CMD; or set -U FZF_PREVIEW_FILE_CMD "head -n 10"
set -q FZF_PREVIEW_DIR_CMD; or set -U FZF_PREVIEW_DIR_CMD "ls"

function fzf_uninstall -e fzf_uninstall
    # disabled until we figure out a sensible way to ensure user overrides
    # are not erased
    # set -l _vars (set | command grep -E "^FZF.*\$" | command awk '{print $1;}')
    # for var in $_vars
    #     eval (set -e $var)
    # end
end

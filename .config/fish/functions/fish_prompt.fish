function fish_prompt
<<<<<<< Updated upstream
    set -l status_copy $status
    set -l pwd_info (pwd_info "/")
    set -l dir
    set -l base
    set -l base_color 888 161616

    if test "$PWD" = ~
        set base "~"

    else if pwd_is_home
        set dir "~/"
    else
        if test "$PWD" != /
            set dir "/"
        end

        set base (set_color red)"/"
    end

    if test ! -z "$pwd_info[1]"
        set base "$pwd_info[1]"
    end

    if test ! -z "$pwd_info[2]"
        set dir "$dir$pwd_info[2]/"
=======
    # This prompt shows:
    # - green lines if the last return command is OK, red otherwise
    # - your user name, in red if root or yellow otherwise
    # - your hostname, in cyan if ssh or blue otherwise
    # - the current path (with prompt_pwd)
    # - date +%X
    # - the current virtual environment, if any
    # - the current git status, if any, with fish_git_prompt
    # - the current battery state, if any, and if your power cable is unplugged, and if you have "acpi"
    # - current background jobs, if any

    # It goes from:
    # ┬─[nim@Hattori:~]─[11:39:00]
    # ╰─>$ echo here

    # To:
    # ┬─[nim@Hattori:~/w/dashboard]─[11:37:14]─[V:django20]─[G:master↑1|●1✚1…1]─[B:85%, 05:41:42 remaining]
    # │ 2	15054	0%	arrêtée	sleep 100000
    # │ 1	15048	0%	arrêtée	sleep 100000
    # ╰─>$ echo there

    set -l retc red
    test $status = 0; and set retc green

    set -q __fish_git_prompt_showupstream
    or set -g __fish_git_prompt_showupstream auto

    function _nim_prompt_wrapper
        set retc $argv[1]
        set field_name $argv[2]
        set field_value $argv[3]

        set_color normal
        set_color $retc
        echo -n '─'
        set_color -o green
        echo -n '['
        set_color normal
        test -n $field_name
        and echo -n $field_name:
        set_color $retc
        echo -n $field_value
        set_color -o green
        echo -n ']'
    end

    set_color $retc
    echo -n '┬─'
    set_color -o green
    echo -n [
    if test "$USER" = root -o "$USER" = toor
        set_color -o red
    else
        set_color -o yellow
    end
    echo -n $USER
    set_color -o white
    echo -n @
    if [ -z "$SSH_CLIENT" ]
        set_color -o blue
    else
        set_color -o cyan
>>>>>>> Stashed changes
    end
    echo -n (prompt_hostname)
    set_color -o white
    echo -n :(prompt_pwd)
    set_color -o green
    echo -n ']'

<<<<<<< Updated upstream
    if test ! -z "$pwd_info[3]"
        segment $base_color " $pwd_info[3] "
    end

    if set branch_name (git_branch_name)
        set -l git_color black green
        set -l git_glyph ""

        if git_is_staged
            set git_color black yellow

            if git_is_dirty
                set git_color $git_color white red
            end

        else if git_is_dirty
            set git_color white red

        else if git_is_touched
            set git_color white red
        end

        if git_is_detached_head
            set git_glyph "➤"

        else if git_is_stashed
            set git_glyph "╍╍"
        end

        set -l prompt
        set -l git_ahead (git_ahead "+ " "- " "+- ")

        if test "$branch_name" = master
            set prompt " $git_glyph $git_ahead"
        else
            set prompt " $git_glyph $branch_name $git_ahead"
        end

        if set -q git_color[3]
            segment "$git_color[3]" "$git_color[4]" "$prompt"
            segment black black
            segment "$git_color[1]" "$git_color[2]" " $git_glyph "
        else
            segment "$git_color[1]" "$git_color[2]" "$prompt"
        end
    end

    segment $base_color " $dir"(set_color white)"$base "

    if test ! -z "$SSH_CLIENT"
        set -l color bbb 222

        if test 0 -eq (id -u "$USER")
            set color red 222
        end

        segment $color (host_info " usr@host ")

    else if test 0 -eq (id -u "$USER")
        segment red 222 " \$ "
    end

    if test "$status_copy" -ne 0
        segment red white (set_color -o)" ! "(set_color normal)

    else if last_job_id > /dev/null
        segment white 333 " %% "
    end

    if [ "$theme_display_virtualenv" != 'no' ]; and set -q VIRTUAL_ENV
        segment yellow blue " "(basename "$VIRTUAL_ENV")" "
    end

    if [ "$theme_display_ruby" != 'no' ]; and set -q RUBY_VERSION
        segment red fff " "(basename "$RUBY_VERSION")" "
    end

    if test "$fish_key_bindings" = "fish_vi_key_bindings"
      switch $fish_bind_mode
        case default
          segment white red "[N]"
        case insert
          segment black green "[I]"
        case replace-one
          segment yellow blue "[R]"
        case visual
          segment white magenta "[V]"
      end
    end

    segment_close
=======
    # Date
    _nim_prompt_wrapper $retc '' (date +%X)

    # Virtual Environment
    set -q VIRTUAL_ENV_DISABLE_PROMPT
    or set -g VIRTUAL_ENV_DISABLE_PROMPT true
    set -q VIRTUAL_ENV
    and _nim_prompt_wrapper $retc V (basename "$VIRTUAL_ENV")

    # git
    set prompt_git (fish_git_prompt | string trim -c ' ()')
    test -n "$prompt_git"
    and _nim_prompt_wrapper $retc G $prompt_git

    # Battery status
    type -q acpi
    and test (acpi -a 2> /dev/null | string match -r off)
    and _nim_prompt_wrapper $retc B (acpi -b | cut -d' ' -f 4-)

    # New line
    echo

    # Background jobs
    set_color normal
    for job in (jobs)
        set_color $retc
        echo -n '│ '
        set_color brown
        echo $job
    end
    set_color normal
    set_color $retc
    echo -n '╰─>'
    set_color -o red
    echo -n '$ '
    set_color normal
>>>>>>> Stashed changes
end

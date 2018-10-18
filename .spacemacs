;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
    ;; Base distribution to use. This is a layer contained in the directory
    ;; `+distribution'. For now available distributions are `spacemacs-base'
    ;; or `spacemacs'. (default 'spacemacs)
    dotspacemacs-distribution 'spacemacs

    ;; Lazy installation of layers (i.e. layers are installed only when a file
    ;; with a supported type is opened). Possible values are `all', `unused'
    ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
    ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
    ;; lazy install any layer that support lazy installation even the layers
    ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
    ;; installation feature and you have to explicitly list a layer in the
    ;; variable `dotspacemacs-configuration-layers' to install it.
    ;; (default 'unused)
    dotspacemacs-enable-lazy-installation 'unused

    ;; If non-nil then Spacemacs will ask for confirmation before installing
    ;; a layer lazily. (default t)
    dotspacemacs-ask-for-lazy-installation t

    ;; If non-nil layers with lazy install support are lazy installed.
    ;; List of additional paths where to look for configuration layers.
    ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
    dotspacemacs-configuration-layer-path '()

    ;; List of configuration layers to load.
    dotspacemacs-configuration-layers
    '(
       ;; ----------------------------------------------------------------
       ;; Example of useful layers you may want to use right away.
       ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
       ;; <M-m f e R> (Emacs style) to install them.
       ;; ----------------------------------------------------------------

       ;; spacemacs-modeline
       (spacemacs-spaceline :location local)
       (osx :variables
         osx-command-as 'meta
         osx-option-as  'none
         )
       (shell :variables
         shell-enable-smart-eshell t
         )
       better-defaults
       helm
       emacs-lisp
       treemacs
       shell-scripts
       git
       github
       emoji
       ;; tmux
       (auto-completion :variables
         auto-completion-return-key-behavior 'complete
         auto-completion-tab-key-behavior 'cycle
         auto-completion-complete-with-key-sequence nil
         auto-completion-complete-with-key-sequence-delay 0.1
         auto-completion-private-snippets-directory nil
         auto-completion-enable-sort-by-usage t
         auto-completion-enable-snippets-in-popup t
         auto-completion-enable-help-tooltip t)
       vimscript
       (python :variables
         python-enable-yapf-format-on-save t
         python-sort-imports-on-save t
         python-fill-column 99
         )
       go
       javascript
       web-beautify
       ;; php
       ;; ansible
       ;; java
       ;; sql
       ;; rust
       html
       spell-checking
       syntax-checking
       version-control
       (markdown :variables
         markdown-live-preview-engine 'vmd)
       (org :variables
         org-directory "~/Dropbox/notes/"
         org-agenda-files (list org-directory)
         org-log-done 'time
         org-enable-github-support t
         org-enable-bootstrap-support t
         org-enable-org-journal-support t
         org-journal-dir "~/Dropbox/notes/journal/"
         org-journal-file-format "%Y-%m-%d"
         org-journal-date-format "%A, %B %d %Y"
         org-journal-time-prefix "* "
         org-journal-time-format ""
         org-projectile-file "TODOs.org"
         org-mobile-inbox-for-pull "~/Dropbox/notes/flagged.org"
         org-mobile-directory "~/Dropbox/アプリ/MobileOrg"
         org-capture-ical-file (concat org-directory "org-ical.org")
         )
       pandoc
       yaml
       ;; csv ; https://github.com/jb55/spacemacs-csv
       (deft :variables
         deft-directory "~/Dropbox/notes"
         )
       ;; pdf-tools
       dash
       ;; terraform
       docker
       ;; vagrant
       ;; chrome
       twitter
       (erc :variables
         erc-server-list
         '(("irc.freenode.net"
              :port "6697"
              :ssl t
              :nick "jimbeam8y")
            )
         )
       slack
       search-engine
       ;; emms
       ;; graphviz
       gnus
       evernote
       ranger
       coq
       )

    ;; list of additional packages that will be installed without being
    ;; wrapped in a layer. If you need some configuration for these
    ;; packages, then consider creating a layer. You can also put the
    ;; configuration in `dotspacemacs/user-config'.
    dotspacemacs-additional-packages
    '(
       ddskk
       ox-gfm
       helm-dash
       helm-ghq
       helm-eww
       migemo
       avy-migemo
       anzu
       diminish
       atomic-chrome
       quick-preview
       direx
       beacon
       mpv
       magithub
       )

    ;; A list of packages that cannot be updated.
    dotspacemacs-frozen-packages '()

    ;; A list of packages and/or extensions that will not be install and loaded.
    dotspacemacs-excluded-packages
    '(
       ;; company
       )

    ;; Defines the behaviour of Spacemacs when installing packages.
    ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
    ;; `used-only' installs only explicitly used packages and deletes any unused
    ;; packages as well as their unused dependencies. `used-but-keep-unused'
    ;; installs only the used packages but won't delete unused ones. `all'
    ;; installs *all* packages supported by Spacemacs and never uninstalls them.
    ;; (default is `used-only')
    dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
    ;; If non-nil then enable support for the portable dumper. You'll need
    ;; to compile Emacs 27 from source following the instructions in file
    ;; EXPERIMENTAL.org at to root of the git repository.
    ;; (default nil)
    dotspacemacs-enable-emacs-pdumper nil

    ;; File path pointing to emacs 27.1 executable compiled with support
    ;; for the portable dumper (this is currently the branch pdumper).
    ;; (default "emacs-27.0.50")
    dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

    ;; Name of the Spacemacs dump file. This is the file will be created by the
    ;; portable dumper in the cache directory under dumps sub-directory.
    ;; To load it when starting Emacs add the parameter `--dump-file'
    ;; when invoking Emacs 27.1 executable on the command line, for instance:
    ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
    ;; (default spacemacs.pdmp)
    dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

    ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
    ;; possible. Set it to nil if you have no way to use HTTPS in your
    ;; environment, otherwise it is strongly recommended to let it set to t.
    ;; This variable has no effect if Emacs is launched with the parameter
    ;; `--insecure' which forces the value of this variable to nil.
    ;; (default t)
    dotspacemacs-elpa-https t

    ;; Maximum allowed time in seconds to contact an ELPA repository.
    ;; (default 5)
    dotspacemacs-elpa-timeout 5

    ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
    ;; This is an advanced option and should not be changed unless you suspect
    ;; performance issues due to garbage collection operations.
    ;; (default '(100000000 0.1))
    dotspacemacs-gc-cons '(100000000 0.1)

    ;; If non-nil then Spacelpa repository is the primary source to install
    ;; a locked version of packages. If nil then Spacemacs will install the
    ;; latest version of packages from MELPA. (default nil)
    dotspacemacs-use-spacelpa nil

    ;; If non-nil then verify the signature for downloaded Spacelpa archives.
    ;; (default nil)
    dotspacemacs-verify-spacelpa-archives nil

    ;; If non-nil then spacemacs will check for updates at startup
    ;; when the current branch is not `develop'. Note that checking for
    ;; new versions works via git commands, thus it calls GitHub services
    ;; whenever you start Emacs. (default nil)
    dotspacemacs-check-for-update t

    ;; If non-nil, a form that evaluates to a package directory. For example, to
    ;; use different package directories for different Emacs versions, set this
    ;; to `emacs-version'. (default 'emacs-version)
    dotspacemacs-elpa-subdirectory 'emacs-version

    ;; One of `vim', `emacs' or `hybrid'.
    ;; `hybrid' is like `vim' except that `insert state' is replaced by the
    ;; `hybrid state' with `emacs' key bindings. The value can also be a list
    ;; with `:variables' keyword (similar to layers). Check the editing styles
    ;; section of the documentation for details on available variables.
    ;; (default 'vim)
    dotspacemacs-editing-style 'hybrid

    ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
    dotspacemacs-verbose-loading nil

    ;; If non-nil then Spacemacs will import your PATH and environment variables
    ;; from your default shell on startup. This is enabled by default for macOS
    ;; users and X11 users.
    dotspacemacs-import-env-vars-from-shell (and (display-graphic-p)
                                              (or (eq system-type 'darwin)
                                                (eq system-type 'gnu/linux)
                                                (eq window-system 'x)))

    ;; If nil then use the default shell is used to fetch the environment
    ;; variables. Set this variable to a different shell executable path to
    ;; import the environment variables from this shell. Note that
    ;; `file-shell-name' is preserved and always points to the default shell. For
    ;; instance to use your fish shell environment variables set this variable to
    ;; `/usr/local/bin/fish'.
    ;; (default nil)
    dotspacemacs-import-env-vars-shell-file-name nil

    ;; Specify the startup banner. Default value is `official', it displays
    ;; the official spacemacs logo. An integer value is the index of text
    ;; banner, `random' chooses a random text banner in `core/banners'
    ;; directory. A string value must be a path to an image format supported
    ;; by your Emacs build.
    ;; If the value is nil then no banner is displayed. (default 'official)
    dotspacemacs-startup-banner 'official

    ;; List of items to show in startup buffer or an association list of
    ;; the form `(list-type . list-size)`. If nil then it is disabled.
    ;; Possible values for list-type are:
    ;; `recents' `bookmarks' `projects' `agenda' `todos'.
    ;; List sizes may be nil, in which case
    ;; `spacemacs-buffer-startup-lists-length' takes effect.
    dotspacemacs-startup-lists '((recents . 0)
                                  (projects . 7))

    ;; True if the home buffer should respond to resize events. (default t)
    dotspacemacs-startup-buffer-responsive t

    ;; Default major mode of the scratch buffer (default `text-mode')
    dotspacemacs-scratch-mode 'text-mode

    ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
    ;; (default nil)
    dotspacemacs-initial-scratch-message nil

    ;; List of themes, the first of the list is loaded when spacemacs starts.
    ;; Press `SPC T n' to cycle to the next theme in the list (works great
    ;; with 2 themes variants, one dark and one light)
    dotspacemacs-themes '(
                           flatland
                           ;; misterioso
                           ;; darktooth
                           ;; monokai
                           ;; spacemacs-dark
                           ;; spacemacs-light)
                           )

    ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
    ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
    ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
    ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
    ;; to create your own spaceline theme. Value can be a symbol or list with\
    ;; additional properties.
    ;; (default '(spacemacs :separator wave :separator-scale 1.5))
    dotspacemacs-mode-line-theme '(spacemacs :separator all-the-icons :separator-scale 1.5)

    ;; If non-nil the cursor color matches the state color in GUI Emacs.
    ;; (default t)
    dotspacemacs-colorize-cursor-according-to-state t

    ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
    ;; quickly tweak the mode-line size to make separators look not too crappy.
    dotspacemacs-default-font '(
                                 ;; "Source Code Pro"
                                 ;; "Ricty Diminished Discord"
                                 "Ricty Discord"
                                 ;; "Ricty Discord for Powerline"
                                 :size 14
                                 ;; :weight normal
                                 ;; :width normal
                                 )

    ;; The leader key (default "SPC")
    dotspacemacs-leader-key "SPC"

    ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
    ;; (default "SPC")
    dotspacemacs-emacs-command-key "SPC"

    ;; The key used for Vim Ex commands (default ":")
    dotspacemacs-ex-command-key ":"

    ;; The leader key accessible in `emacs state' and `insert state'
    ;; (default "M-m")
    dotspacemacs-emacs-leader-key "M-m"

    ;; Major mode leader key is a shortcut key which is the equivalent of
    ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
    dotspacemacs-major-mode-leader-key ","

    ;; Major mode leader key accessible in `emacs state' and `insert state'.
    ;; (default "C-M-m")
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"

    ;; These variables control whether separate commands are bound in the GUI to
    ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
    ;; Setting it to a non-nil value, allows for separate commands under `C-i'
    ;; and TAB or `C-m' and `RET'.
    ;; In the terminal, these pairs are generally indistinguishable, so this only
    ;; works in the GUI. (default nil)
    dotspacemacs-distinguish-gui-tab nil

    ;; Name of the default layout (default "Default")
    dotspacemacs-default-layout-name "Default"

    ;; If non-nil the default layout name is displayed in the mode-line.
    ;; (default nil)
    dotspacemacs-display-default-layout nil

    ;; If non-nil then the last auto saved layouts are resumed automatically upon
    ;; start. (default nil)
    dotspacemacs-auto-resume-layouts t

    ;; If non-nil, auto-generate layout name when creating new layouts. Only has
    ;; effect when using the "jump to layout by number" commands. (default nil)
    dotspacemacs-auto-generate-layout-names nil

    ;; Size (in MB) above which spacemacs will prompt to open the large file
    ;; literally to avoid performance issues. Opening a file literally means that
    ;; no major mode or minor modes are active. (default is 1)
    dotspacemacs-large-file-size 1

    ;; Location where to auto-save files. Possible values are `original' to
    ;; auto-save the file in-place, `cache' to auto-save the file to another
    ;; file stored in the cache directory and `nil' to disable auto-saving.
    ;; (default 'cache)
    dotspacemacs-auto-save-file-location 'cache

    ;; Maximum number of rollback slots to keep in the cache. (default 5)
    dotspacemacs-max-rollback-slots 5

    ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
    ;; `p' several times cycles through the elements in the `kill-ring'.
    ;; (default nil)
    dotspacemacs-enable-paste-transient-state nil

    ;; Which-key delay in seconds. The which-key buffer is the popup listing
    ;; the commands bound to the current keystroke sequence. (default 0.4)
    dotspacemacs-which-key-delay 0.2

    ;; Which-key frame position. Possible values are `right', `bottom' and
    ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
    ;; right; if there is insufficient space it displays it at the bottom.
    ;; (default 'bottom)
    dotspacemacs-which-key-position 'bottom

    ;; Control where `switch-to-buffer' displays the buffer. If nil,
    ;; `switch-to-buffer' displays the buffer in the current window even if
    ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
    ;; displays the buffer in a same-purpose window even if the buffer can be
    ;; displayed in the current window. (default nil)
    dotspacemacs-switch-to-buffer-prefers-purpose nil

    ;; If non-nil a progress bar is displayed when spacemacs is loading. This
    ;; may increase the boot time on some systems and emacs builds, set it to
    ;; nil to boost the loading time. (default t)
    dotspacemacs-loading-progress-bar t

    ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
    ;; (Emacs 24.4+ only)
    dotspacemacs-fullscreen-at-startup nil

    ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
    ;; Use to disable fullscreen animations in OSX. (default nil)
    dotspacemacs-fullscreen-use-non-native nil

    ;; If non-nil the frame is maximized when Emacs starts up.
    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
    ;; (default nil) (Emacs 24.4+ only)
    dotspacemacs-maximized-at-startup t

    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's active or selected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-active-transparency 90

    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's inactive or deselected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-inactive-transparency 50

    ;; If non-nil show the titles of transient states. (default t)
    dotspacemacs-show-transient-state-title t

    ;; If non-nil show the color guide hint for transient state keys. (default t)
    dotspacemacs-show-transient-state-color-guide t

    ;; If non-nil unicode symbols are displayed in the mode line.
    ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
    ;; the value to quoted `display-graphic-p'. (default t)
    dotspacemacs-mode-line-unicode-symbols t

    ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
    ;; scrolling overrides the default behavior of Emacs which recenters point
    ;; when it reaches the top or bottom of the screen. (default t)
    dotspacemacs-smooth-scrolling t

    ;; Control line numbers activation.
    ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
    ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
    ;; This variable can also be set to a property list for finer control:
    ;; '(:relative nil
    ;;   :disabled-for-modes dired-mode
    ;;                       doc-view-mode
    ;;                       markdown-mode
    ;;                       org-mode
    ;;                       pdf-view-mode
    ;;                       text-mode
    ;;   :size-limit-kb 1000)
    ;; (default nil)
    dotspacemacs-line-numbers nil

    ;; Code folding method. Possible values are `evil' and `origami'.
    ;; (default 'evil)
    dotspacemacs-folding-method 'origami

    ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode nil

    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc腦駈拾
    ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
    dotspacemacs-smart-closing-parenthesis nil

    ;; Select a scope to highlight delimiters. Possible values are `any',
    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
    ;; emphasis the current one). (default 'all)
    dotspacemacs-highlight-delimiters 'all

    ;; If non-nil, start an Emacs server if one is not already running.
    ;; (default nil)
    dotspacemacs-enable-server t

    ;; Set the emacs server socket location.
    ;; If nil, uses whatever the Emacs default is, otherwise a directory path
    ;; like \"~/.emacs.d/server\". It has no effect if
    ;; `dotspacemacs-enable-server' is nil.
    ;; (default nil)
    dotspacemacs-server-socket-dir nil

    ;; If non-nil, advise quit functions to keep server open when quitting.
    ;; (default nil)
    dotspacemacs-persistent-server nil

    ;; List of search tool executable names. Spacemacs uses the first installed
    ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
    ;; (default '("rg" "ag" "pt" "ack" "grep"))
    dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

    ;; Format specification for setting the frame title.
    ;; %a - the `abbreviated-file-name', or `buffer-name'
    ;; %t - `projectile-project-name'
    ;; %I - `invocation-name'
    ;; %S - `system-name'
    ;; %U - contents of $USER
    ;; %b - buffer name
    ;; %f - visited file name
    ;; %F - frame name
    ;; %s - process status
    ;; %p - percent of buffer above top of window, or Top, Bot or All
    ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
    ;; %m - mode name
    ;; %n - Narrow if appropriate
    ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
    ;; %Z - like %z, but including the end-of-line format
    ;; (default "%I@%S")
    dotspacemacs-frame-title-format "%I@%S"

    ;; Format specification for setting the icon title format
    ;; (default nil - same as frame-title-format)
    dotspacemacs-icon-title-format nil

    ;; Delete whitespace while saving buffer. Possible values are `all'
    ;; to aggressively delete empty line and long sequences of whitespace,
    ;; `trailing' to delete only the whitespace at end of lines, `changed' to
    ;; delete only whitespace for changed lines or `nil' to disable cleanup.
    ;; (default nil)
    dotspacemacs-whitespace-cleanup 'trailing

    ;; Either nil or a number of seconds. If non-nil zone out after the specified
    ;; number of seconds. (default nil)
    dotspacemacs-zone-out-when-idle nil

    ;; Run `spacemacs/prettify-org-buffer' when
    ;; visiting README.org files of Spacemacs.
    ;; (default nil)
    dotspacemacs-pretty-docs `spacemacs/prettify-org-buffer))


(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included
in the dump."
  (require 'skk nil t)
  (require 'eww)
  (require 'auto-complete-config)
  (require 'company)
  (require 'quick-preview)
  (require 'direx)
  (require 'migemo)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (global-set-key (kbd "C-x j") 'skk-mode)
  (setq default-input-method "japanese-skk")

  (set-frame-parameter nil 'alpha '(90 . 60))
  (add-to-list 'default-frame-alist '(undecorated . t))

  (add-hook 'term-mode-hook 'spacemacs/toggle-truncate-lines-on)

  (golden-ratio-mode t)
  (display-time-mode nil)

  (ac-config-default)

  (global-company-mode t)

  (add-hook 'python-mode-hook
    '(lambda ()
       (spacemacs/toggle-indent-guide-on)
       ))

  (with-eval-after-load "org"
    (require 'ox-gfm nil t)
    (require 'org-projectile)
    (mapcar '(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
      (org-projectile-todo-files))
    (setq spaceline-org-clock-p t)
    )

  ;; (require 'buffer-menu-color)

  (add-hook 'markdown-mode-hook
    '(lambda ()
       (set (make-local-variable 'whitespace-action) nil)))

  (with-eval-after-load "migemo"
    (setq migemo-command "cmigemo")
    (setq migemo-options '("-q" "--emacs" "-i" "\a"))
    (cond
      ((eq system-type 'darwin)
        (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
        )
      ((eq system-type 'gnu/linux)
        (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
        )
      ((eq system-type 'windows-nt)
        (setq migemo-dictionary "c:/app/cmigemo-default-win64/dict/utf-8/migemo-dict")
        ))
    (setq migemo-user-dictionary nil)
    (setq migemo-regex-dictionary nil)
    (setq migemo-coding-system 'utf-8-unix)
    ;; initialize migemo
    (migemo-init)
    )

  (with-eval-after-load "helm"
    (helm-migemo-mode 1)
    )
  (with-eval-after-load "avy-migemo"
    (avy-migemo-mode 1)
    )

  ;; ;; ;; eww
  ;; ;; ;;http://futurismo.biz/archives/2950
  ;; ;; (define-key eww-mode-map "p" 'scroll-down)
  ;; ;; (define-key eww-mode-map "n" 'scroll-up)

  ;; (defvar eww-disable-colorize t)
  ;; (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
  ;;   (unless eww-disable-colorize
  ;;     (funcall orig start end fg)))
  ;; (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
  ;; (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
  ;; (defun eww-disable-color ()
  ;;   (interactive)
  ;;   (setq-local eww-disable-colorize t)
  ;;   (eww-reload))
  ;; (defun eww-enable-color ()
  ;;   (interactive)
  ;;   (setq-local eww-disable-colorize nil)
  ;;   (eww-reload))

  ;; (setq eww-search-prefix "https://www.google.co.jp/search?q=")

  ;; (defun shr-insert-document--for-eww (&rest them)
  ;;   (let ((shr-width 100)) (apply them)))
  ;; (defun eww-display-html--fill-column (&rest them)
  ;;   (advice-add 'shr-insert-document :around 'shr-insert-document--for-eww)
  ;;   (unwind-protect
  ;;     (apply them)
  ;;     (advice-remove 'shr-insert-document 'shr-insert-document--for-eww)))
  ;; (advice-add 'eww-display-html :around 'eww-display-html--fill-column)
  (setq browse-url-browser-function 'eww-browse-url)

  ;; ;; ace-link
  (ace-link-setup-default)

  (eval-after-load "magit-log"
    '(progn
       (custom-set-variables
         '(magit-log-margin '(t "%Y-%m-%d %H:%m:%S" magit-log-margin-width t 18)))))

  ;; https://gist.github.com/s-fubuki/551f1ba58dc4bd202665a19d588ca40e

  (add-hook 'git-commit-setup-hook 'git-commit-prefix-select)
  (defun git-commit-prefix-select ()
    (forward-char)
    (yas-expand))

  (use-package magithub
    :after magit
    :config (magithub-feature-autoinject t))

  ;; (setenv "PKG_CONFIG_PATH" "/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig")
  ;; (add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))

  (spaceline-all-the-icons--setup-anzu)            ;; enable anzu searching
  (spaceline-all-the-icons--setup-package-updates) ;; enable package update indicator
  (spaceline-all-the-icons--setup-git-ahead)       ;; enable # of commits ahead of upstream in git
  (spaceline-all-the-icons--setup-paradox)         ;; enable paradox mode line

  (fancy-battery-mode +1)

  (require 'diminish)
  (eval-after-load "filladapt" '(diminish 'filladapt-mode))

  ;; (emms-standard)
  ;; (emms-default-players)
  ;; (setq emms-playlist-buffer-name "Music-EMMS")
  ;; (setq emms-source-file-default-directory "~/Music/")
  ;; (require 'emms-streams)
  ;; (require 'emms-stream-info)
  ;; (require 'emms-player-mpd)
  ;; (setq emms-player-mpd-server-name "localhost")
  ;; (setq emms-player-mpd-server-port "6600")
  ;; (add-to-list 'emms-info-functions 'emms-info-mpd)
  ;; (add-to-list 'emms-player-list 'emms-player-mpd)
  ;; (emms-player-mpd-connect)
  ;; (spaceline-define-segment all-the-icons-track
  ;;   "Show the current played track"
  ;;   (emms-mode-line-icon-function))

  (setq paradox-github-token (my-lisp-load "paradox-github-token"))
  (add-hook 'after-init-hook #'fancy-battery-mode)

  (setq my-slack-team (my-lisp-load "emacs-slack-team"))
  (setq my-slack-client-id (my-lisp-load "emacs-slack-client-id"))
  (setq my-slack-client-secret (my-lisp-load "emacs-slack-client-secret"))
  (setq my-slack-client-token (my-lisp-load "emacs-slack-client-token"))

  (slack-register-team
    :name my-slack-team
    :default t
    :client-id my-slack-client-id
    :client-secret my-slack-client-secret
    :token my-slack-client-token
    :subscribed-channels '(general slackbot))

  (which-function-mode t)

  (require 'atomic-chrome)
  (atomic-chrome-start-server)

  ;; (my-lisp-load "org-gcal-setting")
  ;; see org.pdf:p73
  (setq org-capture-templates
    `(("t" "TODO 項目を INBOX に貼り付ける" entry
        (file+headline nil "INBOX") "** TODO %?\n\t")
       ("c" "同期カレンダーにエントリー" entry
         (file+headline ,org-capture-ical-file "Schedule")
         "** TODO %?\n\t")))
  (setq org-refile-targets
    (quote (("org-ical.org" :level . 1)
             ("next.org" :level . 1)
             ("sleep.org" :level . 1))))

  (when (package-installed-p 'quick-preview)
    (global-set-key (kbd "C-c C-p") 'quick-preview-at-point)

    (with-eval-after-load "direx"
      (define-key direx:direx-mode-map (kbd "SPC") 'quick-preview-at-point)
      (defun my-advice-quick-preview---get-file-name-for-direx (f &rest args)
        (if (eq major-mode 'direx:direx-mode)
          (direx:file-full-name (direx:item-tree (direx:item-at-point)))
          (apply f args)))
      (advice-add 'quick-preview--get-filename :around #'my-advice-quick-preview---get-file-name-for-direx)))

  ;;Setting for key bindings
  (global-set-key (kbd "C-c q") 'quick-preview-at-point)
  ;;(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)
  (push '(direx:direx-mode :position left :width 25 :dedicated t)
    popwin:special-display-config)
  (global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
  ;; (define-key dired-mode-map (kbd "Q") 'quick-preview-at-point)
  (eval-after-load "python"
    '(define-key python-mode-map "\C-cx" 'jedi-direx:pop-to-buffer))
  (add-hook 'jedi-mode-hook 'jedi-direx:setup)

  (global-ede-mode t)


  ;; (load "mpv-settings" nil t nil)
  ;; ↑ TODO いずれする
  ;; http://emacs.rubikitch.com/mpv/ by るびきち
  (require 'mpv)
  (setq mpv-default-options '("--no-video" "--replaygain=album" "--shuffle"))

  ;;;
  ;;; Wiki(https://github.com/kljohann/mpv.el/wiki)より
  ;;; C-c C-lでmpv:を選択したらmvpのリンクを補完付きで入力できる

  (org-add-link-type "mpv" #'mpv-play-and-prepare-memo)
  (defun mpv-play-and-prepare-memo (path)
    (mpv-play path)
    (kill-new "- 0:00:00 :: start\n"))
  (defun org-mpv-complete-link (&optional arg)
    (replace-regexp-in-string
     "file:" "mpv:"
     (org-file-complete-link arg)
     t t))

  ;;; 再生位置をM-RETで挿入させる
  (defun org-timer-item--mpv-insert-playback-position (fun &rest args)
    "When no org timer is running but mpv is alive, insert playback position."
    (if (and
         (not org-timer-start-time)
         (mpv-live-p))
        (mpv-insert-playback-position t)
      (apply fun args)))
  (advice-add 'org-timer-item :around
              #'org-timer-item--mpv-insert-playback-position)

  ;;; 0:01:02のような文字列でC-c C-oしたらその位置にジャンプさせる
  (add-hook 'org-open-at-point-functions #'mpv-seek-to-position-at-point)

  ;;; 表示されてる時間の3秒前に飛ぶように再定義
  (defun mpv-seek-to-position-at-point ()
    "Jump to playback position as inserted by `mpv-insert-playback-position'.

  This can be used with the `org-open-at-point-functions' hook."
    (interactive)
    (save-excursion
      (skip-chars-backward ":[:digit:]" (point-at-bol))
      (when (looking-at "[0-9]+:[0-9]\\{2\\}:[0-9]\\{2\\}")
        (let ((secs (max 0 (- (org-timer-hms-to-secs (match-string 0)) 3))))
          (when (>= secs 0)
            (mpv--enqueue `("seek" ,secs "absolute") #'ignore)
  )))))

  (global-set-key (kbd "H-SPC") 'mpv-pause)
    (global-set-key (kbd "H-b") 'mpv-seek-backward)


  (with-eval-after-load 'company-coq
    (add-to-list 'company-coq-disabled-features 'prettify-symbols))
 )

(defun my-lisp-load (filename)
  "Load lisp from FILENAME"
  (let ((fullname (expand-file-name (concat "private/" filename) user-emacs-directory))
         lisp)
    (when (file-readable-p fullname)
      (with-temp-buffer
        (progn
          (insert-file-contents fullname)
          (setq lisp
            (condition-case nil
              (read (current-buffer))
              (error ()))))))
    lisp))



;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(avy-migemo yasnippet-snippets yapfify yaml-mode xterm-color ws-butler winum which-key web-mode web-beautify volatile-highlights vmd-mode vimrc-mode vi-tilde-fringe uuidgen use-package unfill twittering-mode treemacs-projectile treemacs-evil toc-org tagedit symon string-inflection spaceline-all-the-icons smeargle slim-mode slack shell-pop scss-mode sass-mode reveal-in-osx-finder restart-emacs ranger rainbow-delimiters quick-preview pyvenv pytest pyenv-mode py-isort pug-mode proof-general prettier-js popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pandoc-mode ox-twbs ox-pandoc ox-gfm overseer osx-trash osx-dictionary origami orgit org-projectile org-present org-pomodoro org-mime org-journal org-download org-bullets org-brain open-junk-file nameless mwim multi-term mpv move-text mmm-mode migemo markdown-toc magithub magit-svn magit-gitflow magit-gh-pulls macrostep lorem-ipsum livid-mode live-py-mode link-hint launchctl json-navigator js2-refactor js-doc insert-shebang indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-ghq helm-flx helm-eww helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geeknote fuzzy font-lock+ flyspell-correct-helm flycheck-pos-tip flycheck-bashate flx-ido flatland-theme fish-mode fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help erc-yt erc-view-log erc-terminal-notifier erc-social-graph erc-image erc-hl-nicks engine-mode emoji-cheat-sheet-plus emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline dockerfile-mode docker direx diminish diff-hl deft ddskk dash-at-point dactyl-mode cython-mode counsel-projectile company-web company-tern company-statistics company-shell company-quickhelp company-go company-emoji company-coq company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode browse-at-remote beacon auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile atomic-chrome aggressive-indent ace-link ace-jump-helm-line ac-ispell)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#f8f8f8" :background "#26292c")))))
)
(custom-set-faces
  '(company-tooltip-common
     ((t (:inherit company-tooltip :weight bold :underline nil))))
  '(company-tooltip-common-selection
     ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))

;; -*- mode: emacs-lisp; lexical-binding: t -*-
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
       (auto-completion :variables
         auto-completion-enable-snippets-in-popup t
         auto-completion-enable-help-tooltip t
         auto-completion-use-company-box t)
       (ivy :variables
         ivy-enable-advanced-buffer-information t)
       better-defaults
       (copy-as-format :variables
         copy-as-format-default "slack"
         )
       emacs-lisp
       git
       ;; github
       markdown
       multiple-cursors
       (org :variables
         org-directory "~/notes/"
         org-agenda-files (list org-directory)
         org-log-done 'time
         org-image-actual-width '(800)
         org-enable-github-support t
         org-enable-bootstrap-support t
         org-enable-org-journal-support t
         org-enable-reveal-js-support t
         org-journal-dir "~/notes/journal/"
         org-journal-file-format "%Y-%m-%d"
         org-journal-date-format "%A, %B %d %Y"
         org-journal-time-prefix "* "
         org-journal-time-format "%H:%M"
         org-journal-carryover-items nil
         org-projectile-file "TODOs.org"
         org-default-notes-file (concat org-directory "/notes.org")
         ;; Jira
         org-enable-jira-support t
         jiralib-url "https://mecompany.atlassian.net"
         )
       (imenu-list :variables
         imenu-list-auto-resize nil
         imenu-list-size 0.2)
       (shell :variables
         shell-default-term-shell "/bin/bash"
         shell-default-height 30
         shell-default-position 'bottom)
       spell-checking
       syntax-checking
       version-control
       better-defaults
       (osx :variables
         osx-command-as       'meta
         osx-option-as        'alt
         osx-control-as       nil
         osx-function-as      nil
         osx-right-command-as 'left
         osx-right-option-as  'hyper
         osx-right-control-as 'left
         )
       (deft :variables
         deft-directory "~/notes"
         )
       dash
       search-engine
       emoji
       web-beautify
       (pdf :variables
         pdf-view-display-size 'fit-page
         pdf-annot-activate-created-annotations t)
       epub
       pandoc
       asciidoc
       ;; bibtex
       twitter
       slack
       ranger
       (treemacs :variables
         treemacs-use-follow-mode t
         treemacs-lock-width t
         )
       csv
       yaml
       json
       lsp
       dap
       (plantuml :variables
         plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.10/libexec/plantuml.jar"
         org-plantuml-jar-path "/usr/local/Cellar/plantuml/1.2019.10/libexec/plantuml.jar"
         plantuml-java-args "java.awt.headless=true"
         plantuml-default-exec-mode 'executable
         ;; plantuml-server-url "http://localhost:8080/plantuml"
         )
       asciidoc
       docker
       (go :variables
         go-use-gometalinter t
         go-linter 'gometalinter
         go-backend 'lsp
         godoc-at-point-function 'godoc-gogetdoc
         go-format-before-save t
         gofmt-command "goimports"
         )
       protobuf
       (python :variables
         python-enable-yapf-format-on-save t
         python-sort-imports-on-save t
         python-fill-column 119
         )
       ipython-notebook
       shell-scripts
       ruby
       html
       javascript
       (sql :variables
         sql-capitalize-keywords t
         sql-capitalize-keywords-disable-interactive t
         sql-capitalize-keywords-blacklist '("name" "varchar")
         sqlfmt-executable "pg_format"
         sqlfmt-options '()
         )
       groovy
       lua
       ansible
       )

    ;; List of additional packages that will be installed without being
    ;; wrapped in a layer. If you need some configuration for these
    ;; packages, then consider creating a layer. You can also put the
    ;; configuration in `dotspacemacs/user-config'.
    ;; To use a local version of a package, use the `:location' property:
    ;; '(your-package :location "~/path/to/your-package/")
    ;; Also include the dependencies as they will not be resolved automatically.
    dotspacemacs-additional-packages
    '(
       ddskk
       browse-url-dwim
       exec-path-from-shell
       go-autocomplete
       ox-asciidoc
       jenkins
       counsel-osx-app
       counsel-world-clock
       flyspell-correct-ivy
       org-recent-headings
       all-the-icons-ivy
       ;; ivy-posframe
       jq-mode
       ob-sql-mode
       ob-go
       wrap-region
       )

    ;; A list of packages that cannot be updated.
    dotspacemacs-frozen-packages '()

    ;; A list of packages that will not be installed and loaded.
    dotspacemacs-excluded-packages '()

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
    dotspacemacs-use-spacelpa t

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
    ;; section of the documentatemacsr details on available variables.
    ;; (emacslt 'vim)
    dotspacemacs-editing-style 'emacs

    ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
    dotspacemacs-verbose-loadinemacs nil

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
                                  (projects . 5)
                                  (bookmarks . 0)
                                  (agenda . 8)
                                  (todos . 10)
                                  )

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
                           doom-one
                           ;; leuven
                           ;; brin
                           ;; flatland
                           ;; wombat
                           )

    ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
    ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
    ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
    ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
    ;; refer to the DOCUMENTATION.org for more info on how to create your own
    ;; spaceline theme. Value can be a symbol or list with additional properties.
    ;; (default '(spacemacs :separator wave :separator-scale 1.5))
    ;; dotspacemacs-mode-line-theme '(all-the-icons :separator slant :separator-scale 1.4)
    dotspacemacs-mode-line-theme '(doom)

    ;; If non-nil the cursor color matches the state color in GUI Emacs.
    ;; (default t)
    dotspacemacs-colorize-cursor-according-to-state t

    ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
    ;; quickly tweak the mode-line size to make separators look not too crappy.
    dotspacemacs-default-font '(
                                 ;; "Source Code Pro"
				                         "Hack Nerd Font"
                                 ;; "Ricty Diminished Discord"
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
    dotspacemacs-large-file-size 2

    ;; Location where to auto-save files. Possible values are `original' to
    ;; auto-save the file in-place, `cache' to auto-save the file to another
    ;; file stored in the cache directory and `nil' to disable auto-saving.
    ;; (default 'cache)
    dotspacemacs-auto-save-file-location 'cache

    ;; Maximum number of rollback slots to keep in the cache. (default 5)
    dotspacemacs-max-rollback-slots 5

    ;; If non-nil, the paste transient-state is enabled. While enabled, after you
    ;; paste something, pressing `C-j' and `C-k' several times cycles through the
    ;; elements in the `kill-ring'. (default nil)
    dotspacemacs-enable-paste-transient-state t

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
    dotspacemacs-fullscreen-use-non-native t

    ;; If non-nil the frame is maximized when Emacs starts up.
    ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
    ;; (default nil) (Emacs 24.4+ only)
    dotspacemacs-maximized-at-startup t

    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's active or selected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-active-transparency 80

    ;; A value from the range (0..100), in increasing opacity, which describes
    ;; the transparency level of a frame when it's inactive or deselected.
    ;; Transparency can be toggled through `toggle-transparency'. (default 90)
    dotspacemacs-inactive-transparency 10

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
    ;; dotspacemacs-line-numbers '(:relative t
    ;;                              :enabled-for-modes
    ;;                              c-mode
    ;;                              c++-mode
    ;;                              python-mode
    ;;                              go-mode
    ;;                              :size-limit-kb 1000)
    dotspacemacs-line-numbers '(:relative nil
                                 :disabled-for-modes
                                 dired-mode
                                 doc-view-mode
                                 markdown-mode
                                 org-mode
                                 pdf-view-mode
                                 text-mode
                                 image-mode
                                 :size-limit-kb 1000)


    ;; Code folding method. Possible values are `evil' and `origami'.
    ;; (default 'evil)
    dotspacemacs-folding-method 'evil

    ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode t

    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc…
    ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
    dotspacemacs-smart-closing-parenthesis t

    ;; Select a scope to highlight delimiters. Possible values are `any',
    ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
    ;; emphasis the current one). (default 'all)
    dotspacemacs-highlight-delimiters 'current

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
    dotspacemacs-frame-title-format "%a @ in %t"

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
    dotspacemacs-pretty-docs t))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."

  (require 'semantic/db-file)

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

  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; (setq ns-use-srgb-colorspace nil)
  (use-package ddskk
    :defer t
    :bind (("C-x j" . skk-mode)))

  (add-to-list 'default-frame-alist
    '(ns-transparent-titlebar . t))

  (add-to-list 'default-frame-alist
    '(ns-appearance . dark)) ;; or dark - depending on your theme

  ;; (spacemacs/toggle-transparency)
  (spacemacs/toggle-golden-ratio-off)
  (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-which-key-on)
  (spacemacs/toggle-aggressive-indent-globally-on)

  ;;; authinfo ファイルの指定
  (setq nntp-authinfo-file "~/.authinfo.gpg")
  (setq nnimap-authinfo-file "~/.authinfo.gpg")
  (setq smtpmail-auth-credentials "~/.authinfo.gpg")
  ;; 暗号化方式の指定
  (setq encrypt-file-alist '(("~/.authinfo.gpg" (gpg "AES"))))
  (setq password-cache-expiry nil)	; パスワードをキャッシュする

  ;; ;; Slack
  ;; ;;
  ;; ;; (setq my-slack-team (my-lisp-load "emacs-slack-team"))
  ;; (setq my-slack-client-id (my-lisp-load "emacs-slack-client-id"))
  ;; (setq my-slack-client-secret (my-lisp-load "emacs-slack-client-secret"))
  ;; (setq my-slack-client-token (my-lisp-load "emacs-slack-client-token"))

  ;; (slack-register-team
  ;;   :name (my-lisp-load "emacs-slack-team")
  ;;   :default t
  ;;   :client-id my-slack-client-id
  ;;   :client-secret my-slack-client-secret
  ;;   :token my-slack-client-token
  ;;   :subscribed-channels '(general slackbot))

  (spacemacs|define-custom-layout "@Slack"
    :binding "s"
    :body
    (call-interactively 'slack-start)
    )

  ;; (spacemacs|define-custom-layout "@elfeed"
  ;;   :binding "l"
  ;;   :body
  ;;   (call-interactively 'elfeed)
  ;;   )

  (spacemacs|define-custom-layout "@twitter"
    :binding "t"
    :body
    (call-interactively 'twit)
    )

  (spacemacs|define-custom-layout "@scratch"
    :binding "S"
    :body
    (call-interactively 'spacemacs/switch-to-scratch-buffer)
    )

  (spacemacs|define-custom-layout "@eww"
    :binding "w"
    :body
    (call-interactively 'eww-browse-url)
    )

  ;; (eval-after-load "eww"
  ;;   '(progn
  ;;      ;; 背景色の設定
  ;;      (defvar eww-disable-colorize t)
  ;;      (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
  ;;        (unless eww-disable-colorize
  ;;          (funcall orig start end fg)))
  ;;      (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
  ;;      (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
  ;;      (defun eww-disable-color ()
  ;;        "eww で文字色を反映させない"
  ;;        (interactive)
  ;;        (setq-local eww-disable-colorize t)
  ;;        (eww-reload))
  ;;      (defun eww-enable-color ()
  ;;        "eww で文字色を反映させる"
  ;;        (interactive)
  ;;        (setq-local eww-disable-colorize nil)
  ;;        (eww-reload))

  ;;      ;; 現在の url を eww で開く
  ;;      (defun browse-url-with-eww ()
  ;;        (interactive)
  ;;        (let ((url-region (bounds-of-thing-at-point 'url)))
  ;;          ;; url
  ;;          (if url-region
  ;;            (eww-browse-url (buffer-substring-no-properties (car url-region)
  ;;                              (cdr url-region))))
  ;;          ;; org-link
  ;;          (setq browse-url-browser-function 'eww-browse-url)
  ;;          (org-open-at-point)))

  ;;      ;; 画像は遅いので表示させない
  ;;      (defun eww-disable-images ()
  ;;        "eww で画像表示させない"
  ;;        (interactive)
  ;;        (setq-local shr-put-image-function 'shr-put-image-alt)
  ;;        (eww-reload))
  ;;      (defun eww-enable-images ()
  ;;        "eww で画像表示させる"
  ;;        (interactive)
  ;;        (setq-local shr-put-image-function 'shr-put-image)
  ;;        (eww-reload))
  ;;      (defun shr-put-image-alt (spec alt &optional flags)
  ;;        (insert alt))
  ;;      ;; はじめから非表示
  ;;      (defun eww-mode-hook--disable-image ()
  ;;        (setq-local shr-put-image-function 'shr-put-image-alt))
  ;;      (add-hook 'eww-mode-hook 'eww-mode-hook--disable-image)

  ;;      ;; (setq eww-search-prefix "https://www.google.co.jp/search?ie=UTF-8&oe=UTF-8&num=50&filter=1&gbv=1&q=")

  ;;      (define-key eww-mode-map "r" 'eww-reload)
  ;;      (define-key eww-mode-map "c 0" 'eww-copy-page-url)
  ;;      (define-key eww-mode-map "p" 'scroll-down)
  ;;      (define-key eww-mode-map "n" 'scroll-up)

  ;;      (ace-link-setup-default)

  ;;      ;; make emacs always use its own browser for opening URL links
  ;;      (setq browse-url-browser-function 'eww-browse-url)

  ;;      )
  ;;   ) ;; end of eww

  (browse-url-dwim-mode t)
  (require 'ace-link)
  (require 'browse-url-dwim)

  ;; mu4e
  (with-eval-after-load 'mu4e-alert
    ;; Enable Desktop notifications
    ;; (mu4e-alert-set-default-style 'notifications)) ; For linux
    ;; (mu4e-alert-set-default-style 'libnotify))  ; Alternative for linux
    ;; (mu4e-alert-set-default-style 'notifier))   ; For Mac OSX (through the terminal notifier app)
    (mu4e-alert-set-default-style 'growl))      ; Alternative for Mac OSX

  ;; wakatime
  ;; (global-wakatime-mode)

  ;; for pdf layer(pdf-tools)
  (setenv "PKG_CONFIG_PATH" "/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig")
  ;; (add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))
  ;; https://stackoverflow.com/questions/16132234/how-can-i-speed-up-emacs-docview-mode
  (global-linum-mode -1)
  (add-hook 'pdf-tools-enabled-hook 'pdf-view-midnight-minor-mode)
  (add-hook 'pdf-view-midnight-minor-mode-hook (
                                                 lambda()
                                                 (setq pdf-view-midnight-colors '("#FFFFFF" . "#002b36"))
                                                 ))
  ;; "#DCDCCC" : pdf-view-midnight-colors

  ;; (use-package org-pdftools
  ;;   :config (setq org-pdftools-root-dir
  ;;             "~/Dropbox/Documents/pdf"))

  (with-eval-after-load 'org
    ;; (org-babel-do-load-languages
    ;;   'org-babel-load-languages
    ;;   '((ditaa . t)))
    (setq org-ditaa-jar-path "/usr/local/bin/ditaa")
    (setq org-refile-targets '((org-agenda-files :maxlevel . 2)))
    (require 'ob-go)
    (org-babel-do-load-languages 'org-babel-load-languages
      (append org-babel-load-languages
        '((go . t)
           ))
      )

    (require 'ob-sql-mode)

    ;;     (setq org-capture-templates
    ;;       '(("e" "experiment" entry (file+headline "~/dropbox/notes/experiment.org" "experiment")
    ;;           "* %? %u %i\n
    ;; #+begin_src emacs-lisp

    ;; #+end_src")
    ;;          ("i" "idea" entry (file+headline "~/dropbox/notes/idea.org" "idea")
    ;;            "* %? %u %i")
    ;;          ("r" "remember" entry (file+headline "~/dropbox/notes/remember.org" "remember")
    ;;            "* %? %u %i")
    ;;          ("m" "memo" entry (file+headline "~/dropbox/notes/memo.org" "memo")
    ;;            "* %? %u %i")
    ;;          ("s" "story" entry (file+headline "~/dropbox/emacs/org/story.org" "story")
    ;;            "* %? %u %i")
    ;;          ("f" "future task" entry (file+headline "~/dropbox/notes/task_future.org" "future task")
    ;;            "** todo %? \n")
    ;;          ("t" "task" entry (file+headline "~/dropbox/notes/notes.org" "tasks")
    ;;            "** todo %? \n   scheduled: %^t \n")
    ;;          ("p" "priority task" entry (file "~/dropbox/notes/priority_task.org")
    ;;            "* %?\n" :clock-in t :clock-resume t)))

    (setq org-capture-templates
      '(("t" "New TODO" entry
          (file+headline "~/notes/notes.org" "tasks")
          "* TODO %?\n\n%a")
         ("m" "Memo" entry
           (file+headline "~/notes/memo.org" "memo")
           "* %U%?\n%i\n%a")))
    )

  ;; (use-package company-box
  ;; :hook (company-mode . company-box-mode))
  ;; (setq comjpany-box-backends-colors nil)
  ;; (global-company-mode t)
  ;; (use-package company-box
  ;;   :after (company all-the-icons)
  ;;   :hook ((company-mode . company-box-mode))
  ;;   :custom
  ;;   (company-box-icons-alist 'company-box-icons-all-the-icons)
  ;;   (company-box-doc-enable nil))

  ;; (when (and (executable-find "fish")
  ;;         (require 'fish-completion nil t))
  ;;   (global-fish-completion-mode))

  ;; projectile
  (setq projectile-enable-caching t)

  ;; MPDel
  ;; (require 'mpdel)
  ;; (mpdel-mode)

  (with-eval-after-load 'ivy
    ;; (require 'ivy-posframe)

    ;; package 経由のインストールなら，M-x counsel-world-clock ですぐ使える．
    (require 'counsel-world-clock nil t)
    (setq ivy-count-format "(%d/%d) ")

    )

  (with-eval-after-load "ivy"
    (defun my-pre-prompt-function ()
      (if window-system
        (format "%s\n%s "
          (make-string 40 ?\x5F) ;; "__"
          (all-the-icons-faicon "sort-amount-asc")) ;; ""
        (format "%s\n" (make-string (1- (frame-width)) ?\x2D))))
    (setq ivy-pre-prompt-function #'my-pre-prompt-function))

  ;; 一時無効化する
  ;; (with-eval-after-load "ivy-posframe"
  ;;   ;; https://github.com/tumashu/ivy-posframe

  ;;   (setq ivy-posframe-height-alist '((swiper . 20)
  ;;                                      (t      . 30)))

  ;;   ;; Different command can use different display function.
  ;;   (setq ivy-posframe-display-functions-alist
  ;;     '((swiper          . nil)
  ;;        (swiper-all      . nil)
  ;;        (complete-symbol . nil)
  ;;        (counsel-M-x     . nil)
  ;;        (counsel-find-file . nil)
  ;;        (t               . ivy-posframe-display-at-frame-top-center))
  ;;     )
  ;;   (setq ivy-posframe-parameters
  ;;     '((left-fringe . 8)
  ;;        (right-fringe . 8)))
  ;;   (ivy-posframe-mode 1))

  ;; (use-package treemacs-icons-dired
  ;;   :after treemacs dired
  ;;   :ensure t
  ;;   :config (treemacs-icons-dired-mode))

  (when (require 'counsel-selected nil t)
    (define-key selected-keymap (kbd "l") 'counsel-selected))

  (global-set-key (kbd "C-M-1") 'counsel-osx-app)
  (with-eval-after-load "counsel-osx-app"
    (custom-set-variables
      '(counsel-osx-app-location
         '("/Applications" "/Applications/Utilities" "/System/Applications")
         )
      )
    )

  (when (require 'flyspell-correct-ivy nil t)
    (setq flyspell-correct-interface '#'flyspell-correct-ivy)
    (global-set-key (kbd "<f7>") 'flyspell-correct-word-generic))

  (use-package org-recent-headings
    :config (org-recent-headings-mode))

  ;; for Ivy interface
  (global-set-key (kbd "C-c f r") 'org-recent-headings-ivy)

  (with-eval-after-load "org-recent-headings"
    ;; デフォルトでは `ivy-string<' が使われてしまい，使用履歴が反映されない．
    ;; つまり， recent-headings.dat に記録された順が反映されない．
    (setf (alist-get 'org-recent-headings-ivy ivy-sort-functions-alist) nil)

    ;; 履歴の保存先を調整
    (setq org-recent-headings-save-file "~/.emacs.d/org-recent-headings.dat")

    ;; 選択した箇所に直接移動する (C-M-n/C-M-p のプレビューは効かない)
    (setq org-recent-headings-show-entry-function
      'org-recent-headings--show-entry-direct)

    ;; 履歴の更新をキックするコマンドの指定
    (setq org-recent-headings-advise-functions
      '(org-agenda-goto
         org-agenda-show
         org-agenda-show-mouse
         org-show-entry
         org-reveal
         org-refile
         org-tree-to-indirect-buffer
         org-bookmark-jump))

    ;; アクティベート
    (org-recent-headings-mode))

  (when (require 'prescient nil t)
    ;; ivy インターフェイスでコマンドを実行するたびに，キャッシュをファイル保存
    (setq prescient-aggressive-file-save t)

    ;; ファイルの保存先
    (setq prescient-save-file
      (expand-file-name "~/.emacs.d/prescient-save.el"))

    ;; アクティベート
    (prescient-persist-mode 1))

  (when (require 'ivy-prescient nil t)

    ;; =ivy= の face 情報を引き継ぐ（ただし，完全ではない印象）
    (setq ivy-prescient-retain-classic-highlighting t)

    ;; コマンドを追加
    (dolist (command '(counsel-world-clock ;; Merged!
                        counsel-app)) ;; add :caller
      (add-to-list 'ivy-prescient-sort-commands command))

    ;; フィルタの影響範囲を限定する．以下の3つは順番が重要．
    ;; (1) マイナーモードの有効化
    (ivy-prescient-mode 1)
    ;; (2) =counsel-M-x= をイニシャル入力対応にする
    (setf (alist-get 'counsel-M-x ivy-re-builders-alist)
      #'ivy-prescient-re-builder)
    ;; (3) デフォルトのイニシャル入力を上書きする
    (setf (alist-get t ivy-re-builders-alist) #'ivy--regex-ignore-order))

  (defface my-ivy-arrow-visible
    '((((class color) (background light)) :foreground "orange")
       (((class color) (background dark)) :foreground "#EE6363"))
    "Face used by Ivy for highlighting the arrow.")

  (defface my-ivy-arrow-invisible
    '((((class color) (background light)) :foreground "#FFFFFF")
       (((class color) (background dark)) :foreground "#31343F"))
    "Face used by Ivy for highlighting the invisible arrow.")

  (if window-system
    (when (require 'all-the-icons nil t)
      (defun my-ivy-format-function-arrow (cands)
        "Transform CANDS into a string for minibuffer."
        (ivy--format-function-generic
          (lambda (str)
            (concat (all-the-icons-faicon
                      "hand-o-right"
                      :v-adjust -0.2 :face 'my-ivy-arrow-visible)
              " " (ivy--add-face str 'ivy-current-match)))
          (lambda (str)
            (concat (all-the-icons-faicon
                      "hand-o-right" :face 'my-ivy-arrow-invisible) " " str))
          cands
          "\n"))
      (setq ivy-format-functions-alist
        '((t . my-ivy-format-function-arrow))))
    (setq ivy-format-functions-alist '((t . ivy-format-function-arrow))))

  (use-package all-the-icons-ivy
    :ensure t
    :config
    (all-the-icons-ivy-setup))

  (when (require 'all-the-icons-ivy nil t)
    (dolist (command '(counsel-projectile-switch-project
                        counsel-ibuffer))
      (add-to-list 'all-the-icons-ivy-buffer-commands command))
    (all-the-icons-ivy-setup))

  ;; Go
  (setenv "GO111MODULE" "on")
  (add-to-list 'exec-path "~/bin/")

  (use-package exec-path-from-shell
    :ensure t
    :config
    (progn
      (exec-path-from-shell-initialize) ))

  ;; https://github.com/alecthomas/gometalinter/blob/master/README.md
  ;; https://github.com/favadi/flycheck-gometalinter/blob/master/README.md
  ;; (use-package flycheck-gometalinter
  ;;   :ensure t
  ;;   :config
  ;;   (progn
  ;;     (flycheck-gometalinter-setup)))

  ;; LSP
  ;; (use-package lsp-mode
  ;;   :hook (XXX-mode . lsp)
  ;;   :commands lsp)

  ;; optionally
  (use-package lsp-ui :commands lsp-ui-mode)
  (use-package company-lsp :commands company-lsp)
  (use-package lsp-treemacs :commands lsp-treemacs-errors-list)
  ;; optionally if you want to use debugger
  (use-package dap-mode)
  (use-package dap-go)
  ;; (use-package dap-LANGUAGE) to load the dap adapter for your language

  ;; Magit
  (eval-after-load "magit-log"
    '(progn
       (custom-set-variables
         '(magit-log-margin '(t "%Y-%m-%d %H:%M:%S" magit-log-margin-width t 18)))))

  ;;; You need to customize ‘magit-repository-directories’ before you can list repositories

  ;; jenkins.el
  (with-eval-after-load 'jenkins
    (setq jenkins-api-token "11f24f43355259f412180476a0700cffc4")
    (setq jenkins-url "http://jenkins/")
    (setq jenkins-username "kawano")
    ;;    (setq jenkins-viewname "<viewname>") ;; if you're not using views skip this line
    (setq jenkins-colwidth-name 70) ;; or jenkins-colwidth-id, jenkins-colwidth-last-status
    (setq jenkins-colwidth-id 10)
    (setq jenkins-colwidth-last-status 60)
    )

  (with-eval-after-load "json-mode"
    (define-key json-mode-map (kbd "C-c C-j") #'jq-interactively))

  (org-babel-do-load-languages 'org-babel-load-languages
    (append org-babel-load-languages
      '((jq . t)
         ))
    )

  (require 'wrap-region)

  ;; emacs-ja.info
  ;; https://ayatakesi.github.io/
  (add-to-list 'Info-directory-list "~/info/")
  (defun Info-find-node--info-ja (orig-fn filename &rest args)
    (apply orig-fn
      (pcase filename
        ("emacs" "emacs263-ja")
        (t filename))
      args))
  (advice-add 'Info-find-node :around 'Info-find-node--info-ja)

  ) ;; end of user-config

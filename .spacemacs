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
    '(php
       html
       shell-scripts
       ;; ----------------------------------------------------------------
       ;; Example of useful layers you may want to use right away.
       ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
       ;; `M-m f e R' (Emacs style) to install them.
       ;; ----------------------------------------------------------------
       ;; helm
       ivy
       auto-completion
       better-defaults
       themes-megapack
       emacs-lisp
       git
       github
       markdown
       ;; multiple-cursors
       (org :variables
         org-directory "~/Dropbox/notes/"
         org-agenda-files (list org-directory)
         org-log-done 'time
         org-enable-github-support t
         org-enable-bootstrap-support t
         org-enable-org-journal-support t
         org-enable-reveal-js-support t
         org-journal-dir "~/Dropbox/notes/journal/"
         org-journal-file-format "%Y-%m-%d"
         org-journal-date-format "%A, %B %d %Y"
         org-journal-time-prefix "* "
         org-journal-time-format "HH:MM"
         org-projectile-file "TODOs.org"
         org-mobile-inbox-for-pull "~/Dropbox/notes/flagged.org"
         org-mobile-directory "~/Dropbox/アプリ/MobileOrg"
         org-capture-ical-file (concat org-directory "org-ical.org")
         )
       (shell :variables
         shell-default-height 30
         shell-default-position 'bottom)
       spell-checking
       syntax-checking
       version-control
       ;;
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
       japanese
       fzf
       (deft :variables
         deft-directory "~/Dropbox/notes"
         )
       (dash :variables
         helm-dash-browser-func 'eww)
       search-engine
       emoji
       web-beautify
       (mu4e :variables
         mu4e-use-maildirs-extension t
         mu4e-enable-async-operations t
         mu4e-enable-notifications t
         mu4e-enable-mode-line t
         mu4e-spacemacs-layout-name "@Mu4e"
         mu4e-spacemacs-layout-binding "m"
         mu4e-spacemacs-kill-layout-on-exit t)
       (elfeed :variables
         rmh-elfeed-org-files (list
                                "~/Dropbox/notes/elfeed.org"
                                )
         rmh-elfeed-org-auto-ignore-invalid-feeds t
         )
       pdf
       epub
       twitter
       slack
       evernote
       (wakatime :variables
         wakatime-api-key (my-lisp-load "wakatime")
         )
       ranger
       (treemacs :variables
         treemacs-use-follow-mode t
         treemacs-use-filewatch-mode t
         treemacs-use-collapsed-directories 3
         treemacs-fringe-indicator nil
        ;; treemacs-position 'right
         )
       ;; (neotree :variables
       ;;   neo-theme 'icons
       ;;   neo-persist-show t
       ;;   neo-smart-open t
       ;;   neo-window-position 'right
       ;;   )
       csv
       (python :variables
         python-enable-yapf-format-on-save t
         python-sort-imports-on-save t
         python-fill-column 119
         )
       ipython-notebook
       javascript
       bibtex
       sql
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
       browse-url-dwim
       ;; helm-ghq
       ;; helm-eww
       company-box
       fish-completion
       mpdel
       ivy-posframe
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
    dotspacemacs-enable-emacs-pdumper t

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
    dotspacemacs-editing-style 'emacs

    ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
    dotspacemacs-verbose-loading nil

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
                                  (projects . 1)
                                  (bookmarks . 0)
                                  (agenda . 4)
                                  (todos . 5)
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
    dotspacemacs-auto-resume-layouts nil

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

    ;; If non-nil, the paste transient-state is enabled. While enabled, after you
    ;; paste something, pressing `C-j' and `C-k' several times cycles through the
    ;; elements in the `kill-ring'. (default nil)
    dotspacemacs-enable-paste-transient-state t

    ;; Which-key delay in seconds. The which-key buffer is the popup listing
    ;; the commands bound to the current keystroke sequence. (default 0.4)
    dotspacemacs-which-key-delay 0.1

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
    dotspacemacs-line-numbers nil

    ;; Code folding method. Possible values are `evil' and `origami'.
    ;; (default 'evil)
    dotspacemacs-folding-method 'evil

    ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
    ;; (default nil)
    dotspacemacs-smartparens-strict-mode nil

    ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
    ;; over any automatically added closing parenthesis, bracket, quote, etc…
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
    dotspacemacs-pretty-docs nil))

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
  (require 'ace-link)
  (require 'browse-url-dwim)
  ;; (require 'helm-eww)
  ;; (require 'helm-ghq)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (setq ns-use-srgb-colorspace nil)

  (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-transparency)
  (spacemacs/toggle-golden-ratio-on)
  (spacemacs/toggle-which-key-on)

  ;; authinfo ファイルの指定
  (setq nntp-authinfo-file "~/.authinfo.gpg")
  (setq nnimap-authinfo-file "~/.authinfo.gpg")
  (setq smtpmail-auth-credentials "~/.authinfo.gpg")
  ;; 暗号化方式の指定
  (setq encrypt-file-alist '(("~/.authinfo.gpg" (gpg "AES"))))
  (setq password-cache-expiry nil)	; パスワードをキャッシュする

  ;; Slack
  ;;
  ;; (setq my-slack-team (my-lisp-load "emacs-slack-team"))
  (setq my-slack-client-id (my-lisp-load "emacs-slack-client-id"))
  (setq my-slack-client-secret (my-lisp-load "emacs-slack-client-secret"))
  (setq my-slack-client-token (my-lisp-load "emacs-slack-client-token"))

  (slack-register-team
    :name (my-lisp-load "emacs-slack-team")
    :default t
    :client-id my-slack-client-id
    :client-secret my-slack-client-secret
    :token my-slack-client-token
    :subscribed-channels '(general slackbot))

  (spacemacs|define-custom-layout "@Slack"
    :binding "s"
    :body
    (call-interactively 'slack-start)
    )

  (spacemacs|define-custom-layout "@elfeed"
    :binding "l"
    :body
    (call-interactively 'elfeed)
    )

  (spacemacs|define-custom-layout "@twitter"
    :binding "t"
    :body
    (call-interactively 'twit)
    )

   (eval-after-load "eww"
    '(progn
       ;; 背景色の設定
       (defvar eww-disable-colorize t)
       (defun shr-colorize-region--disable (orig start end fg &optional bg &rest _)
         (unless eww-disable-colorize
           (funcall orig start end fg)))
       (advice-add 'shr-colorize-region :around 'shr-colorize-region--disable)
       (advice-add 'eww-colorize-region :around 'shr-colorize-region--disable)
       (defun eww-disable-color ()
         "eww で文字色を反映させない"
         (interactive)
         (setq-local eww-disable-colorize t)
         (eww-reload))
       (defun eww-enable-color ()
         "eww で文字色を反映させる"
         (interactive)
         (setq-local eww-disable-colorize nil)
         (eww-reload))

       ;; 現在の url を eww で開く
       (defun browse-url-with-eww ()
         (interactive)
         (let ((url-region (bounds-of-thing-at-point 'url)))
           ;; url
           (if url-region
             (eww-browse-url (buffer-substring-no-properties (car url-region)
                               (cdr url-region))))
           ;; org-link
           (setq browse-url-browser-function 'eww-browse-url)
           (org-open-at-point)))

       ;; 画像は遅いので表示させない
       (defun eww-disable-images ()
         "eww で画像表示させない"
         (interactive)
         (setq-local shr-put-image-function 'shr-put-image-alt)
         (eww-reload))
       (defun eww-enable-images ()
         "eww で画像表示させる"
         (interactive)
         (setq-local shr-put-image-function 'shr-put-image)
         (eww-reload))
       (defun shr-put-image-alt (spec alt &optional flags)
         (insert alt))
       ;; はじめから非表示
       (defun eww-mode-hook--disable-image ()
         (setq-local shr-put-image-function 'shr-put-image-alt))
       (add-hook 'eww-mode-hook 'eww-mode-hook--disable-image)

       ;; (setq eww-search-prefix "https://www.google.co.jp/search?ie=UTF-8&oe=UTF-8&num=50&filter=1&gbv=1&q=")

       (define-key eww-mode-map "r" 'eww-reload)
       (define-key eww-mode-map "c 0" 'eww-copy-page-url)
       (define-key eww-mode-map "p" 'scroll-down)
       (define-key eww-mode-map "n" 'scroll-up)

       (ace-link-setup-default)

       ;; make emacs always use its own browser for opening URL links
       (setq browse-url-browser-function 'eww-browse-url)

       )
     ) ;; end of eww

  (browse-url-dwim-mode t)

  ;; (setq helm-for-files-preferred-list
  ;;   '(helm-source-buffers-list
  ;;      helm-source-recentf
  ;;      helm-source-bookmarks
  ;;      helm-source-file-cache
  ;;      helm-source-files-in-current-dir
  ;;      helm-source-eww-history
  ;;      helm-source-locate))

  ;; mu4e
  (with-eval-after-load 'mu4e-alert
    ;; Enable Desktop notifications
    ;; (mu4e-alert-set-default-style 'notifications)) ; For linux
    ;; (mu4e-alert-set-default-style 'libnotify))  ; Alternative for linux
    ;; (mu4e-alert-set-default-style 'notifier))   ; For Mac OSX (through the terminal notifier app)
    (mu4e-alert-set-default-style 'growl))      ; Alternative for Mac OSX

  ;; wakatime
  (global-wakatime-mode)

  (add-hook 'pdf-tools-enabled-hook 'pdf-view-midnight-minor-mode)
  ;; "#DCDCCC" : pdf-view-midnight-colors

  (setq spaceline-org-clock-p t)
  (with-eval-after-load 'org
    ;; ....
    )

  (use-package company-box
    :hook (company-mode . company-box-mode))
  (setq comjpany-box-backends-colors nil)
  (global-company-mode t)

  (when (and (executable-find "fish")
          (require 'fish-completion nil t))
    (global-fish-completion-mode))

  (require 'mpdel)
  (mpdel-mode)

  ;; ivy-posframe
  (require 'ivy-posframe)
  ;; (setq ivy-display-function #'ivy-posframe-display)
  (setq ivy-display-function #'ivy-posframe-display-at-frame-center)
  ;; (setq ivy-display-function #'ivy-posframe-display-at-window-center)
  ;; (setq ivy-display-function #'ivy-posframe-display-at-frame-bottom-left)
  ;; (setq ivy-display-function #'ivy-posframe-display-at-window-bottom-left)
  ;; (setq ivy-display-function #'ivy-posframe-display-at-point)
  (ivy-posframe-enable)

  )

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
   '(mpdel libmpdel fish-completion zenburn-theme zen-and-art-theme yasnippet-snippets yapfify xterm-color ws-butler writeroom-mode winum white-sand-theme which-key web-mode web-beautify wakatime-mode volatile-highlights vi-tilde-fringe uuidgen use-package unfill underwater-theme ujelly-theme twittering-mode twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit symon sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode slack shell-pop seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder restart-emacs rebecca-theme ranger rainbow-delimiters railscasts-theme pyvenv pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme prettier-js planet-theme pippel pipenv pip-requirements phpunit phpcbf php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el password-generator paradox ox-twbs ox-reveal ox-gfm overseer osx-trash osx-dictionary orgit organic-green-theme org-ref org-projectile org-present org-pomodoro org-mime org-journal org-download org-bullets org-brain open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-ipython nov noctilux-theme neotree naquadah-theme nameless mwim mustang-theme multi-term mu4e-maildirs-extension mu4e-alert move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magithub magit-svn magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode live-py-mode link-hint light-soap-theme launchctl kaolin-themes json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme japanese-holidays ir-black-theme insert-shebang inkpot-theme indent-guide importmagic impatient-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mu helm-mode-manager helm-make helm-gitignore helm-git-grep helm-ghq helm-flx helm-eww helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitignore-templates github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geeknote gandalf-theme fzf fuzzy forge font-lock+ flyspell-correct-helm flycheck-pos-tip flycheck-bashate flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator farmhouse-theme fancy-battery eziam-theme eyebrowse expand-region exotica-theme evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help engine-mode emoji-cheat-sheet-plus emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies ein editorconfig dumb-jump drupal-mode dracula-theme dotenv-mode doom-themes doom-modeline django-theme diminish diff-hl deft ddskk dash-at-point darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode counsel-projectile company-web company-tern company-statistics company-shell company-php company-emoji company-box company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme clean-aindent-mode cherry-blossom-theme centered-cursor-mode busybee-theme bubbleberry-theme browse-url-dwim browse-at-remote birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme ace-window ace-link ace-jump-helm-line ac-ispell))
 '(treemacs-position 'right))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

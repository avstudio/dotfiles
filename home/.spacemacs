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

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (ranger :variables
             ranger-show-preview t
             ;; ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-override-dired-mode t
             ranger-override-dired 'ranger
             insert-directory-program "/usr/local/bin/gls"
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     ranger
     dap
     (ruby :variables
           ruby-test-runner 'rspec
           ruby-enable-ruby-on-rails-support t
           ;; ruby-enable-enh-ruby-mode t
           ruby-backend 'lsp
           )
     ruby-on-rails
     (sql :variables
          sql-backend 'lsp
          sql-capitalize-keywords t
          sql-lsp-sqls-workspace-config-path 'workspace)
     yaml
     cmake
     (rust :variables
           rust-backend 'lsp
           rust-format-on-save t)
     (html :variables html-enable-lsp t)
     react
     prettier
     (javascript :variables
                 javascript-backend 'tide
                 ;; javascript-backend 'lsp
                 javascript-lsp-linter t
                 javascript-fmt-tool 'prettier
                 javascript-repl 'nodejs)
     elixir
     ;; outshine
     ;; auto-completion
     (auto-completion :variables
                      ;; auto-completion-idle-delay nil
                      ;; auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior nil
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t
                      auto-completion-use-company-box t)
     ;; colors

     ;; better-defaults
     emacs-lisp
     git
     github
     helm
     ;; lsp
     (lsp :variables lsp-rust-server 'rust-analyzer)
     mermaid
     (markdown :variables markdown-live-preview-engine 'vmd)
     multiple-cursors
     search-engine
     (org :variables
          verb-enable-elisp-completion t
          org-enable-verb-support t
          org-enable-reveal-js-support t
          org-enable-github-support t)
     (shell :variables
            close-window-with-terminal t
            shell-default-height 30
            shell-default-position 'bottom)
     spell-checking ;; fix for auto complete (ac-flyspell-workaround)
     csv
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      version-control-diff-side 'left)
     (restclient :variables
                 restclient-use-org t)
     treemacs)


   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(xclip
                                      atom-one-dark-theme
                                      seeing-is-believing
                                      (emacs-taskrunner :location (recipe :fetcher github :repo "emacs-taskrunner/emacs-taskrunner"))
                                      (helm-taskrunner :location (recipe :fetcher github :repo "avucic/helm-taskrunner"))
                                      (emacs-async :location (recipe :fetcher github :repo "jwiegley/emacs-async"))
                                      eslint-fix
                                      excorporate
                                      antlr-mode
                                      exunit)

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

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

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

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

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
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

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
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(atom-one-dark
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14.0
                               :weight normal
                               :width normal)

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
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

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

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

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

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

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
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers t

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
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
   ;; dotspacemacs-persistent-server t

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
   dotspacemacs-whitespace-cleanup nil

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil))

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
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )
(defun bb/setup-term-mode ()
  (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r)
  (evil-local-set-key 'insert (kbd "C-e") 'bb/send-C-e)
  (evil-local-set-key 'insert (kbd "C-c") 'bb/send-C-c)
  (evil-local-set-key 'insert (kbd "C-k") 'bb/send-C-k)
  (evil-local-set-key 'insert (kbd "C-u") 'bb/send-C-u)
  (evil-local-set-key 'insert (kbd "C-p") 'bb/send-C-p)
  (evil-local-set-key 'insert (kbd "C-n") 'bb/send-C-n)
  )

(defun bb/send-C-e ()
  (interactive)
  (term-send-raw-string "\C-e"))

(defun bb/send-C-r ()
  (interactive)
  (term-send-raw-string "\C-r"))

(defun bb/send-C-c ()
  (interactive)
  (term-send-raw-string "\C-c"))

(defun bb/send-C-u ()
  (interactive)
  (term-send-raw-string "\C-u"))

(defun bb/send-C-k ()
  (interactive)
  (term-send-raw-string "\C-k"))

(defun bb/send-C-p ()
  (interactive)
  (term-send-raw-string "\C-p"))

(defun bb/send-C-n ()
  (interactive)
  (term-send-raw-string "\C-n"))

(defun gen-pass (input)
  "Nonce function"
  (interactive "sPass: ")
  (shell-command
   (concatenate 'string "ruby ~/Documents/psd.rb " input " | pbcopy"))
    )

(defun ediff-copy-both-to-C ()
  (interactive)
  (ediff-copy-diff ediff-current-difference nil 'C nil
                   (concat
                    (ediff-get-region-contents ediff-current-difference 'A ediff-control-buffer)
                    (ediff-get-region-contents ediff-current-difference 'B ediff-control-buffer))))
(defun add-d-to-ediff-mode-map () (define-key ediff-mode-map "c" 'ediff-copy-both-to-C))

(defun codefalling//reset-eslint-rc ()
  (let ((rc-path (if (projectile-project-p)
                     (concat (projectile-project-root) ".eslintrc.js"))))
    (if (file-exists-p rc-path)
        (progn
          (message rc-path)
          (setq flycheck-eslintrc rc-path)))))

(defun evil-ex-search-next-auto-clear-highlight ()
  (interactive)
  (evil-ex-search-next)
  (run-with-idle-timer
   1 nil '(lambda () (spacemacs/evil-search-clear-highlight))))

(defun evil-ex-search-previous-auto-clear-highlights ()
  (interactive)
  (evil-ex-search-previous)
  (run-with-idle-timer
   1 nil '(lambda () (spacemacs/evil-search-clear-highlight))))

(defun kill-non-active-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer 
        (delq (current-buffer) 
              (remove-if-not 'buffer-file-name (buffer-list)))))

(defun kill-matching-buffers (regexp &optional internal-too no-ask)
  "Kill buffers whose name matches the specified REGEXP.
Ignores buffers whose name starts with a space, unless optional
prefix argument INTERNAL-TOO is non-nil.  Asks before killing
each buffer, unless NO-ASK is non-nil."
  (interactive "sKill buffers matching this regular expression: \nP")
  (dolist (buffer (buffer-list))
    (let ((name (buffer-name buffer)))
      (when (and name (not (string-equal name ""))
                 (or internal-too (/= (aref name 0) ?\s))
                 (string-match regexp name))
        (funcall (if no-ask 'kill-buffer 'kill-buffer-ask) buffer)))))

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; (setq auth-sources '("~/.authinfo.gpg"))
  (load-library "~/.authinfo")
  (add-to-list 'exec-path "~/bin")

  (prefer-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-language-environment 'utf-8)
  (set-selection-coding-system 'utf-8)

  (scroll-bar-mode -1)
  (xclip-mode 1)
  (global-undo-tree-mode t)
  (evil-set-undo-system 'undo-tree)
  (custom-theme-set-faces 'user
                          `(org-level-4 ((t (:foreground "#98c379")))))

  (spacemacs/toggle-indent-guide-globally-on)
  (add-to-list 'default-frame-alist '(vertical-scroll-bars . nil))

  ;; (setq tab-always-indent t)
  (setq vc-follow-symlinks nil)
  (setq projectile-enable-caching t)
  (setq evil-ex-search-persistent-highlight nil)
  ;; (setq flycheck-elixir-credo-strict t)
  (setq auto-completion-enable-help-tooltip t)
  (setq x-gtk-use-system-tooltips nil)
  (setq elixir-ls-path "~/.elixir-ls")
  (setq lsp-ui-doc-enable nil)
  ;; (setq lsp-ui-doc-position 'at-point)
  (setq lsp-enable-file-watchers nil)
  (setq x-gtk-use-system-tooltips nil)
  (setq ranger-show-literal nil)

  ;; org
  (setq org-refile-use-outline-path 'file)
  (setq org-outline-path-complete-in-steps nil)
  (setq org-directory "~/Dropbox/Org")
  (setq org-default-notes-file "~/Dropbox/Org/notes.org")
  (setq org-projectile-projects-file "~/Dropbox/Org/projects.org")
  ;; (setq org-reveal-root "")
  (setq org-reveal-root "file:///Users/vucinjo/Dropbox/Or/reveal.js")
  ;; (setq org-reveal-root "file:///Users/vucinjo/Dropbox/Slides/reveal.js")
  (setq org-refile-targets
        '(("projects.org" :maxlevel . 5)
          ("notes.org" :maxlevel . 1)
          ("index.org" :maxlevel . 3)
          ("tasks.org" :maxlevel . 1)
          ("notebook.org" :maxlevel . 5)
          ("access.org" :maxlevel . 1)))
  (setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
  (setq org-refile-use-outline-path t)                  ; Show full paths for refiling

  (setq org-capture-templates
        '(
          ("b" "Notebook and Bookmarks")
          ("bc" "Category" entry (file "notebook.org")
           "* %? %^G" :prepend t)
          ("bn" "Note" entry (file "notebook.org")
           "* %? %^G \n%u" :prepend t)
          ("bl" "Link" entry (file "notebook.org")
           "* %A %^G \n%u" :prepend t)

          ("p" "Projects")
          ("pc" "Project name" entry (file "projects.org")
           "* %? %^G" :prepend t)
          ("pn" "Note" entry (file "projects.org")
           "* %? %^G \n%u" :prepend t)
          ("pl" "Link" entry (file "projects.org")
           "* %A %^G \n%u" :prepend t)

          ("t" "Tasks")
          ("tt" "Today Tasks" entry (file+headline "today.org" "Tasks")
           "* TODO %?\n%^T" :prepend t)
          ("tg" "Tasks" entry (file+headline "tasks.org" "Tasks")
           "* TODO %? %^G \n%u" :prepend t)

          ("n" "Notes")
          ("nc" "Category" entry (file "notes.org")
           "* %? %^G" :prepend t)
          ("nn" "Note" entry (file"notes.org")
           "* %? %^G \n%u" :prepend t)
          ("f" "Today Focus" entry (file+headline "today.org" "Today Focus")
           "* %? " :prepend t)))

  (setq org-todo-keywords
        '((sequence
           "IDEA(i)"
           "TODO(t)"
           "IN-PROGRESS(n)"
           "WAITING(w)"
           "BLOCKED(b)"
           "REVIEW(r)"
           "|"
           "FAIL(f)"
           "DONE(d)"
           "CANCELED(c)")))

  (setq org-todo-keyword-faces
        '(
          ("IDEA" . "white")
          ("IN-PROGRESS" . "yellow")
          ("REVIEW" . "DarkOliveGreen3")
          ("WAITING" . "magenta")
          ("BLOCKED" . "DarkOrange")
          ("CANCELED" . "tomato3")
          ("FAIL" . "red")
          ("DONE" . "green3")
          )
        )

  (with-eval-after-load 'org-mode
    (setq ob-mermaid-cli-path "~/.asdf/shims/mmdc")
    )

  ;; web ===============================================================
  (setq web-mode-enable-auto-closing t)

  ;; JS ===============================================================
  (with-eval-after-load 'js2-mode
    (setq js2-mode-show-parse-errors nil)
    (setq js2-mode-show-strict-warnings nil)
    (add-hook 'js2-mode-hook #'lsp-ui-mode)
    (add-hook 'js2-mode-hook #'lsp-mode)
    (spacemacs/declare-prefix-for-mode 'js2-mode
      "m=" "formating" "format code")
    (spacemacs/set-leader-keys-for-major-mode 'js2-mode
      "=l" 'eslint-fix)
    )

  ;; React ===============================================================
  (with-eval-after-load 'rjsx-mode
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-indent-style 2)
    (setq js2-basic-offset 2)
    (setq js-indent-level 2)
    )


  ;; Ruby ===============================================================
  (with-eval-after-load 'ruby-mode
    (require 'dap-ruby)
    (require 'seeing-is-believing)
    (add-hook 'ruby-mode-hook #'lsp-ui-mode)

    (spacemacs/set-leader-keys-for-major-mode 'ruby-mode
      "==" 'rubocopfmt)

    (spacemacs/declare-prefix-for-mode 'ruby-mode
      "m=" "format" "Format code with Rubocop")
    )

  ;; Rust ===============================================================
  (with-eval-after-load 'rust-mode
    ;; (setq racer-cmd "~/.asdf/shims/racer")
    (setq racer-rust-src-path (concat (car (split-string (shell-command-to-string "rustc --print sysroot") "\n")) "/lib/rustlib/src/rust/library"))
    (setq lsp-rust-analyzer-server-command '("rust-analyzer"))
    (add-hook 'rust-mode-hook #'lsp-ui-mode)
    )

  ;; Rspec ===============================================================
  (with-eval-after-load 'rspec-mode '(rspec-install-snippets))

  ;; Elixir =============================================================
  (with-eval-after-load 'elixir-mode
    (require 'dap-elixir)
    (dap-ui-mode)
    (dap-mode)
    (spacemacs/declare-prefix-for-mode 'elixir-mode
      "mt" "tests" "testing related functionality")
    (spacemacs/set-leader-keys-for-major-mode 'elixir-mode
      "ta" 'exunit-verify-all
      "tb" 'exunit-verify
      "tr" 'exunit-rerun
      "tt" 'exunit-verify-single)
    (add-hook 'lsp-after-initialize-hook
              (lambda ()
                (lsp--set-configuration `(:elixirLS (:dialyzerEnabled :json-false)))))
    (add-to-list 'auto-mode-alist '("\\.leex\\'" . web-mode))
    (add-hook 'elixir-mode-hook 'flycheck-mode)
    (add-hook 'elixir-mode-hook
              (lambda () (add-hook 'before-save-hook 'elixir-format nil t)))
    (add-hook 'mix-format-hook '(lambda ()
                                  (if (projectile-project-p)
                                      (setq mixfmt-args (list "--dot-formatter" (concat (projectile-project-root) "/.formatter.exs")))
                                    (setq mixfmt-args nil))))

    ;; (setq lsp-ui-sideline-enable nil)
    ;; (setq lsp-ui-doc-max-width 20)
    ;; (setq lsp-ui-doc-max-height 25)
    )

  (purpose-add-user-purposes :regexps '(
                                        ("spec\\.rb$" . rspec)
                                        ("\\.rb$" . ruby)
                                        ("\\.js$" . js)
                                        ("\\.ex$" . elixir)
                                        ("\\.html$" . web)
                                        ("\\.leex$" . web)
                                        ("\\.eex$" . web)
                                        ("\\.css$" . web)
                                        ("\\.scss$" . web)
                                        ))

  ;; ;;  Excorporate
  ;; ;; allow opening the exchange calendar with 'e' from calendar 
  ;; (evil-define-key 'motion calendar-mode-map "e" #'exco-calendar-show-day)

  ;; (setq-default
  ;;  ;; configure email address and office 365 exchange server adddress for exchange web services
  ;;  excorporate-configuration
  ;;  (quote
  ;;   ("my.email@myorg.com" . "https://outlook.office365.com/EWS/Exchange.asmx"))
  ;;  ;; integrate emacs diary entries into org agenda
  ;;  org-agenda-include-diary t
  ;;  )
  ;; ;; activate excorporate and request user/password to start connection
  ;; (excorporate)
  ;; ;; enable the diary integration (i.e. write exchange calendar to emacs diary file -> ~/.emacs.d/diary must exist)
  ;; (excorporate-diary-enable)
  ;; (defun ab/agenda-update-diary ()
  ;;   "call excorporate to update the diary for today"
  ;;   (exco-diary-diary-advice (calendar-current-date) (calendar-current-date) #'message "diary updated")
  ;;   )

  ;; ;; update the diary every time the org agenda is refreshed
  ;; (add-hook 'org-agenda-cleanup-fancy-diary-hook 'ab/agenda-update-diary )

  ;; Keybindings
  ;; (spacemacs/set-leader-keys (kbd "b b") 'switch-to-buffer)
  (global-set-key (kbd "M-m f d") 'find-name-dired)
  (global-set-key (kbd "M-m f g") 'rgrep)
  (evil-leader/set-key "q q" 'spacemacs/frame-killer)
  (evil-leader/set-key "y Y" 'helm-show-kill-ring)
  (evil-leader/set-key "bl" 'ibuffer)
  (define-key evil-normal-state-map (kbd "<escape>") 'evil-mc-undo-all-cursors)
  (define-key evil-motion-state-map (kbd "n") 'evil-ex-search-next-auto-clear-highlight)
  (define-key evil-motion-state-map (kbd "N") 'evil-ex-search-previous-auto-clear-highlights)
  (define-key evil-normal-state-map (kbd "L") 'end-of-line)
  (define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-insert-state-map (kbd "C-e") 'end-of-line)
  (define-key evil-normal-state-map (kbd "H") 'move-beginning-of-line)
  (define-key evil-normal-state-map (kbd "L") 'end-of-line)
  (define-key evil-visual-state-map (kbd "H") 'move-beginning-of-line)
  (define-key evil-visual-state-map (kbd "L") 'end-of-line)

  (add-hook 'flycheck-mode-hook 'codefalling//reset-eslint-rc)
  (add-hook 'ediff-keymap-setup-hook 'add-d-to-ediff-mode-map)
  (add-hook 'term-mode-hook #'bb/setup-term-mode)
  (add-hook 'dap-stopped-hook (lambda (arg) (call-interactively #'dap-hydra)))
  (add-hook 'hack-local-variables-hook #'spacemacs/toggle-truncate-lines)

  (advice-add #'evil-delete-marks :after
              #'(lambda (&rest rest)
                  (evil-visual-mark-mode)
                  (evil-visual-mark-mode)))
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
 '(evil-want-Y-yank-to-eol nil)
 '(org-agenda-files (append (file-expand-wildcards "~/Dropbox/Org/*.org")))
 '(package-selected-packages
   '(phpunit phpcbf phpactor composer php-extras php-auto-yasnippets helm-gtags ggtags geben drupal-mode counsel-gtags php-runtime php-mode magit-todos eslint-fix helm-taskswitch exunit vmd-mode bm ob-mermaid company-statistics company-quickhelp helm helm-core wgrep smex lsp-ivy ivy-yasnippet ivy-xref ivy-purpose ivy-hydra ivy-avy flyspell-correct-ivy counsel-projectile counsel-css counsel swiper ivy outshine outorg sqlup-mode sql-indent tide typescript-mode tern rjsx-mode js2-mode js-doc import-js grizzl add-node-modules-path ibuffer-projectile company-box frame-local company-inf-ruby web-mode web-beautify tagedit slim-mode scss-mode sass-mode pug-mode prettier-js impatient-mode simple-httpd helm-css-scss haml-mode github-search github-clone gist gh marshal logito pcache forge ghub closql emacsql-sqlite emacsql treepy emmet-mode dap-mode posframe bui company-web web-completion-data yasnippet-snippets xterm-color vterm treemacs-magit terminal-here smeargle shell-pop seeing-is-believing rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocopfmt rubocop rspec-mode robe rbenv projectile-rails rake inflections orgit org-rich-yank org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download org-cliplink org-brain ob-elixir multi-term mmm-mode minitest markdown-toc magit-svn magit-section magit-gitflow magit-popup lsp-ui lsp-treemacs lsp-origami origami htmlize helm-org-rifle helm-lsp lsp-mode markdown-mode dash-functional helm-gitignore helm-git-grep helm-company helm-c-yasnippet gnuplot gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ fringe-helper git-gutter+ gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-credo feature-mode evil-org evil-magit magit git-commit with-editor transient eshell-z eshell-prompt-extras esh-help chruby bundler inf-ruby browse-at-remote auto-yasnippet yasnippet auto-dictionary atom-one-dark-theme alchemist company elixir-mode ac-ispell auto-complete ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-icons-dired treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons restart-emacs request rainbow-delimiters popwin pcre2el password-generator paradox overseer org-superstar open-junk-file nameless move-text macrostep lorem-ipsum link-hint indent-guide hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-purpose helm-projectile helm-org helm-mode-manager helm-make helm-ls-git helm-flx helm-descbinds helm-ag google-translate golden-ratio font-lock+ flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu emr elisp-slime-nav editorconfig dumb-jump dotenv-mode diminish devdocs define-word column-enforce-mode clean-aindent-mode centered-cursor-mode auto-highlight-symbol auto-compile aggressive-indent ace-link ace-jump-helm-line))
 '(pdf-view-midnight-colors '("#b2b2b2" . "#292b2e"))
 '(safe-local-variable-values
   '((eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (alias . "bar")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql")
              (alias . "foo")
              (dataSourceName . "root:password@tcp(localhost:3306)/mysql"))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 3306))
             (inventory
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "sql_inventory")
              (sql-port 3306))
             (invoicing
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 3306))
             (hr
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "sql_hr")
              (sql-port 3306))))
     (eval setq lsp-sqls-connections
           '(((alias . "foo")
              (driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (alias . "foo")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql")
              (alias . "bar")
              (dataSourceName . "root:password@tcp(localhost:3306)/sql_inventory"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (alias . "foo")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql")
              (alias . "bar")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 5432))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'tutorial)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 5432))
             (invoicing
              (sql-product 'invoicing)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 5432))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 5432))
             (invoicing
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (alias . "tutorial")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql")
              (alias . "invoicing")
              (dataSourceName . "root:password@tcp(localhost:3306)/invoicing"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/mysql"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql2")
              (dataSourceName . "root:password@tcp(localhost:3306)/invoicing"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/invoicing"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 5432))
             (inventory
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "sql_inventory")
              (sql-port 5432))
             (invoicing
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 5432))
             (hr
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "sql_hr")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql-tutorial")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "mysql-inventory")
              (dataSourceName . "root:password@tcp(localhost:3306)/sql_inventory"))
             ((driver . "mysql-invoicing")
              (dataSourceName . "root:password@tcp(localhost:3306)/invoicing"))
             ((driver . "mysql-hr")
              (dataSourceName . "root:password@tcp(localhost:3306)/sql_hr"))))
     (eval setq sql-connection-alist
           '((tutorial
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "tutorial")
              (sql-port 5432))
             (inventory
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "inventory")
              (sql-port 5432))
             (invoicing
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 5432))
             (hr
              (sql-product 'mysql)
              (sql-server "127.0.0.1")
              (sql-user "root")
              (sql-password "password")
              (sql-database "invoicing")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)"))))
     (eval setq sql-connection-alist
           '((pp-db
              (sql-product 'postgres)
              (sql-server "127.0.0.1")
              (sql-user "postgres")
              (sql-password "postgres")
              (sql-database "dispatch_dev")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "postgresql")
              (dataSourceName . "host=0.0.0.0 port=5432 user=postgres password=postgres dbname=dispatch_dev sslmode=disable"))))
     (eval setq sql-connection-alist
           '((pp-db
              (sql-product 'postgres)
              (sql-server "127.0.0.1")
              (sql-user "postgres")
              (sql-password "postgres")
              (sql-database "partner-product_development")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "postgresql")
              (dataSourceName . "host=0.0.0.0 port=5432 user=postgres password=postgres dbname=partner-product_development sslmode=disable"))))
     (eval setq sql-connection-alist
           '((pg
              (sql-product 'postgres)
              (sql-server "127.0.0.1")
              (sql-user "postgres")
              (sql-password "postgres")
              (sql-database "partner-product_development")
              (sql-port 5432))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/tutorial"))
             ((driver . "postgresql")
              (dataSourceName . "host=0.0.0.0 port=5432 user=postgres password=postgres dbname=tutorial sslmode=disable"))))
     (eval setq lsp-sqls-connections
           '(((driver . "mysql")
              (dataSourceName . "root:password@tcp(localhost:3306)/mysql"))
             ((driver . "postgresql")
              (dataSourceName . "host=0.0.0.0 port=5432 user=postgres password=postgres dbname=partner-product_development sslmode=disable"))))
     (lsp-sqls-connections quote
                           (((driver . "mysql")
                             (dataSourceName . "root:password@tcp(localhost:3306)/mysql"))
                            ((driver . "postgresql")
                             (dataSourceName . "host=0.0.0.0 port=5432 user=postgres password=postgres dbname=partner-product_development sslmode=disable"))))
     (javascript-backend . tide)
     (javascript-backend . tern)
     (javascript-backend . lsp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-4 ((t (:foreground "#98c379")))))
)

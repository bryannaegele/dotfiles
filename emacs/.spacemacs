;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
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
  dotspacemacs-configuration-layer-path '("~/.emacs.d/private/")
  ;; List of configuration layers to load.
  dotspacemacs-configuration-layers
  '(sql
    protobuf
    erlang
  themes-megapack
  ;; csv
  ;; rust
  ;; sql
  elixir
  ;; ----------------------------------------------------------------
  ;; Example of useful layers you may want to use right away.
  ;; Uncomment some layer names and press (Vim style) or
  ;; (Emacs style) to install them.
  ;; ----------------------------------------------------------------
  ivy
  auto-completion
  better-defaults
  emacs-lisp
  evil-snipe
  html
  javascript
  ;; react
  colors
  docker
  git
  github
  yaml
  markdown
  org
  osx
  shell
  ;; (shell :variables
  ;; shell-default-height 30
  ;; shell-default-position 'bottom)
  spell-checking
  syntax-checking
  version-control
  )
  ;; List of additional packages that will be installed without being
  ;; wrapped in a layer. If you need some configuration for these
  ;; packages, then consider creating a layer. You can also put the
  ;; configuration in `dotspacemacs/user-config'.
  dotspacemacs-additional-packages '()
  ;; A list of packages that cannot be updated.
  dotspacemacs-frozen-packages '()
  ;; A list of packages that will not be installed and loaded.
  dotspacemacs-excluded-packages '()
  ;; Defines the behaviour of Spacemacs when installing packages.
  ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
  ;; `used-only' installs only explicitly used packages and uninstall any
  ;; unused packages as well as their unused dependencies.
  ;; `used-but-keep-unused' installs only the used packages but won't uninstall
  ;; them if they become unused. `all' installs *all* packages supported by
  ;; Spacemacs and never uninstall them. (default is `used-only')
  dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
  ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
  ;; possible. Set it to nil if you have no way to use HTTPS in your
  ;; environment, otherwise it is strongly recommended to let it set to t.
  ;; This variable has no effect if Emacs is launched with the parameter
  ;; `--insecure' which forces the value of this variable to nil.
  ;; (default t)
  dotspacemacs-elpa-https t
  ;; Maximum allowed time in seconds to contact an ELPA repository.
  dotspacemacs-elpa-timeout 5
  ;; If non nil then spacemacs will check for updates at startup
  ;; when the current branch is not `develop'. Note that checking for
  ;; new versions works via git commands, thus it calls GitHub services
  ;; whenever you start Emacs. (default nil)
  dotspacemacs-check-for-update nil
  ;; If non-nil, a form that evaluates to a package directory. For example, to
  ;; use different package directories for different Emacs versions, set this
  ;; to `emacs-version'.
  dotspacemacs-elpa-subdirectory nil
  ;; One of `vim', `emacs' or `hybrid'.
  ;; `hybrid' is like `vim' except that `insert state' is replaced by the
  ;; `hybrid state' with `emacs' key bindings. The value can also be a list
  ;; with `:variables' keyword (similar to layers). Check the editing styles
  ;; section of the documentation for details on available variables.
  ;; (default 'vim)
  dotspacemacs-editing-style 'vim
  ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
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
  ;; `recents' `bookmarks' `projects' `agenda' `todos'."
  ;; List sizes may be nil, in which case
  ;; `spacemacs-buffer-startup-lists-length' takes effect.
  dotspacemacs-startup-lists '((recents . 5)
  (projects . 7))
  ;; True if the home buffer should respond to resize events.
  dotspacemacs-startup-buffer-responsive t
  ;; Default major mode of the scratch buffer (default `text-mode')
  dotspacemacs-scratch-mode 'text-mode
  ;; List of themes, the first of the list is loaded when spacemacs starts.
  ;; Press T n to cycle to the next theme in the list (works great
  ;; with 2 themes variants, one dark and one light)
  dotspacemacs-themes '(ujelly
  zenburn
  tango
  soft-morning)
  ;; If non nil the cursor color matches the state color in GUI Emacs.
  dotspacemacs-colorize-cursor-according-to-state t
  ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
  ;; quickly tweak the mode-line size to make separators look not too crappy.
  dotspacemacs-default-font '("Fira Code Retina"
  :size 15
  :weight normal
  :width normal
  :powerline-scale 1.1)
  ;; The leader key
  dotspacemacs-leader-key "SPC"
  ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
  ;; (default "SPC")
  dotspacemacs-emacs-command-key "SPC"
  ;; The key used for Vim Ex commands (default ":")
  dotspacemacs-ex-command-key ":"
  ;; The leader key accessible in `emacs state' and `insert state'
  ;; (default "M-m")
  dotspacemacs-emacs-leader-key "M-m"
  ;; Major mode leader key is a shortcut key which is the equivalent of
  ;; pressing ` m`. Set it to `nil` to disable it. (default ",")
  dotspacemacs-major-mode-leader-key ","
  ;; Major mode leader key accessible in `emacs state' and `insert state'.
  ;; (default "C-M-m")
  dotspacemacs-major-mode-emacs-leader-key "C-M-m"
  ;; These variables control whether separate commands are bound in the GUI to
  ;; the key pairs C-i, TAB and C-m, RET.
  ;; Setting it to a non-nil value, allows for separate commands under
  ;; and TAB or and RET.
  ;; In the terminal, these pairs are generally indistinguishable, so this only
  ;; works in the GUI. (default nil)
  dotspacemacs-distinguish-gui-tab nil
  ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
  dotspacemacs-remap-Y-to-y$ nil
  ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
  ;; there. (default t)
  dotspacemacs-retain-visual-state-on-shift t
  ;; If non-nil, J and K move lines up and down when in visual mode.
  ;; (default nil)
  dotspacemacs-visual-line-move-text nil
  ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
  ;; (default nil)
  dotspacemacs-ex-substitute-global nil
  ;; Name of the default layout (default "Default")
  dotspacemacs-default-layout-name "Default"
  ;; If non nil the default layout name is displayed in the mode-line.
  ;; (default nil)
  dotspacemacs-display-default-layout nil
  ;; If non nil then the last auto saved layouts are resume automatically upon
  ;; start. (default nil)
  dotspacemacs-auto-resume-layouts nil
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
  ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
  dotspacemacs-helm-resize nil
  ;; if non nil, the helm header is hidden when there is only one source.
  ;; (default nil)
  dotspacemacs-helm-no-header nil
  ;; define the position to display `helm', options are `bottom', `top',
  ;; `left', or `right'. (default 'bottom)
  dotspacemacs-helm-position 'bottom
  ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
  ;; in all non-asynchronous sources. If set to `source', preserve individual
  ;; source settings. Else, disable fuzzy matching in all sources.
  ;; (default 'always)
  dotspacemacs-helm-use-fuzzy 'source
  ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
  ;; several times cycle between the kill ring content. (default nil)
  dotspacemacs-enable-paste-transient-state nil
  ;; Which-key delay in seconds. The which-key buffer is the popup listing
  ;; the commands bound to the current keystroke sequence. (default 0.4)
  dotspacemacs-which-key-delay 0.4
  ;; Which-key frame position. Possible values are `right', `bottom' and
  ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
  ;; right; if there is insufficient space it displays it at the bottom.
  ;; (default 'bottom)
  dotspacemacs-which-key-position 'bottom
  ;; If non nil a progress bar is displayed when spacemacs is loading. This
  ;; may increase the boot time on some systems and emacs builds, set it to
  ;; nil to boost the loading time. (default t)
  dotspacemacs-loading-progress-bar t
  ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
  ;; (Emacs 24.4+ only)
  dotspacemacs-fullscreen-at-startup nil
  ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
  ;; Use to disable fullscreen animations in OSX. (default nil)
  dotspacemacs-fullscreen-use-non-native nil
  ;; If non nil the frame is maximized when Emacs starts up.
  ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
  ;; (default nil) (Emacs 24.4+ only)
  dotspacemacs-maximized-at-startup nil
  ;; A value from the range (0..100), in increasing opacity, which describes
  ;; the transparency level of a frame when it's active or selected.
  ;; Transparency can be toggled through `toggle-transparency'. (default 90)
  dotspacemacs-active-transparency 90
  ;; A value from the range (0..100), in increasing opacity, which describes
  ;; the transparency level of a frame when it's inactive or deselected.
  ;; Transparency can be toggled through `toggle-transparency'. (default 90)
  dotspacemacs-inactive-transparency 90
  ;; If non nil show the titles of transient states. (default t)
  dotspacemacs-show-transient-state-title t
  ;; If non nil show the color guide hint for transient state keys. (default t)
  dotspacemacs-show-transient-state-color-guide t
  ;; If non nil unicode symbols are displayed in the mode line. (default t)
  dotspacemacs-mode-line-unicode-symbols t
  ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
  ;; scrolling overrides the default behavior of Emacs which recenters point
  ;; when it reaches the top or bottom of the screen. (default t)
  dotspacemacs-smooth-scrolling t
  ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
  ;; derivatives. If set to `relative', also turns on relative line numbers.
  ;; (default nil)
  dotspacemacs-line-numbers 'relative
  ;; Code folding method. Possible values are `evil' and `origami'.
  ;; (default 'evil)
  dotspacemacs-folding-method 'evil
  ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
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
  ;; If non nil, advise quit functions to keep server open when quitting.
  ;; (default nil)
  dotspacemacs-persistent-server nil
  ;; List of search tool executable names. Spacemacs uses the first installed
  ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
  ;; (default '("ag" "pt" "ack" "grep"))
  dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
  ;; The default package repository used if no explicit repository has been
  ;; specified with an installed package.
  ;; Not used for now. (default nil)
  dotspacemacs-default-package-repository nil
  ;; Delete whitespace while saving buffer. Possible values are `all'
  ;; to aggressively delete empty line and long sequences of whitespace,
  ;; `trailing' to delete only the whitespace at end of lines, `changed'to
  ;; delete only whitespace for changed lines or `nil' to disable cleanup.
  ;; (default nil)
  dotspacemacs-whitespace-cleanup nil
  ))

(defun set-project-in-frame-title (frame)
  (interactive)
  (select-frame frame) ;; Doen't seem to make a difference if you uncomment this or not.
  (setq project-name (getenv "project"))
  (message "Project: %s" project-name)
  (if project-name
  (setq frame-title-format (concat "%b (%*) [" project-name "] "))
  (setq frame-title-format (concat "%b (%*)"))))
(add-hook 'after-make-frame-functions 'set-project-in-frame-title)

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq vc-follow-symlinks t)
  (setq-default dotspacemacs-themes '(whiteboard
  ujelly
  zenburn
  tango
  soft-morning))
  (load-theme 'whiteboard t)

  (setq insert-directory-program (substitute-in-file-name "/opt/homebrew/opt/coreutils/libexec/gnubin/ls"))

  ;; projectile
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

  ;;Elixir
  ;; (use-package lsp-mode
  ;;   :commands lsp
  ;;   :ensure t
  ;;   :diminish lsp-mode
  ;;   :hook
  ;;   (elixir-mode . lsp)
  ;;   :init
  ;; (add-to-list 'exec-path "~/dev/elixir-ls"))

  (use-package alchemist
    :commands alchemist
    :ensure t
    :diminish alchemist-mode
    :hook (elixir-mode . alchemist-mode)
    :config
    (setq alchemist-mix-env "dev")
    (setq alchemist-hooks-compile-on-save t)
    (map! :map elixir-mode-map :nv "m" alchemist-mode-keymap))


  ;; (defun mix-dialyzer ()
  ;; (interactive)
  ;; (save-buffer)
  ;; (alchemist-mix-execute (list "dialyzer") nil))
  ;; (evil-leader/set-key-for-mode 'elixir-mode
  ;; "md" 'mix-dialyzer)

  ;; alchemist
  ;; (defun mix-credo ()
  ;; "Run credo on project"
  ;; (interactive)
  ;; (save-buffer)
  ;; (alchemist-mix-execute "credo"))
  ;; (evil-leader/set-key-for-mode 'elixir-mode
  ;; "mc" 'mix-credo)

  ;; (defun mix-format ()
  ;; "Run mix format on project"
  ;; (interactive)
  ;; (save-buffer)
  ;; (alchemist-mix-execute "format")
  ;; (evil-leader/set-key-for-mode `elixir-mode
  ;; "mf" 'mix-format)
  ;; )

  ;; use react-mode for .js files
  ;; has support for local eslint which is a problem with nvm
  ;; (add-to-list 'auto-mode-alist '("\\.js\\'" . react-mode))

  (setq-default
  ;; js2-mode
  js2-basic-offset 2
  js-indent-level 2

  ;; web-mode
  css-indent-offset 2
  web-mode-markup-indent-offset 2
  web-mode-css-indent-offset 2
  web-mode-code-indent-offset 2
  web-mode-attr-indent-offset 2)

  (setq-default
   flyspell-mode 0)

  (require 'flycheck)

  ;; turn on flychecking globally
  (add-hook 'after-init-hook #'global-flycheck-mode)

  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
  '(javascript-jshint)))

  (setq flycheck-checkers '(javascript-eslint))


  ;; use eslint with web-mode for jsx files
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  (flycheck-add-mode 'javascript-eslint 'js-mode)
  ;; (flycheck-add-mode 'javascript-eslint 'react-mode)

  ;; customize flycheck temp file prefix
  (setq-default flycheck-temp-prefix ".flycheck")

  ;; disable json-jsonlist checking for json files
  (setq-default flycheck-disabled-checkers
  (append flycheck-disabled-checkers
  '(json-jsonlist)))

  ;; https://github.com/purcell/exec-path-from-shell
  ;; only need exec-path-from-shell on OSX
  ;; this hopefully sets up path and other vars better
  (when (memq window-system '(mac ns))
    (setq exec-path-from-shell-check-startup-files nil)
    (exec-path-from-shell-initialize))

  ;; aspell
  (setq ispell-program-name "/usr/local/bin/aspell")
  (setq ispell-list-command "--list")

  ;; prefs
  (global-linum-mode 'relative) ; Show line numbers by default
  (global-hl-line-mode -1) ; Disable line highlighting
  (setq require-final-newline t) ; Adds newline to end of file on save if it isn't there

  (if (featurep 'ns)
      (progn
        (global-set-key (kbd "<mouse-4>") (kbd "<wheel-up>"))
        (global-set-key (kbd "<mouse-5>") (kbd "<wheel-down>"))))

  (when (window-system)
  (set-default-font "Fira Code"))
(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
  (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
  (36 . ".\\(?:>\\)")
  (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
  (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
  (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
  (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
  (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
  (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
  (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
  (48 . ".\\(?:x[a-zA-Z]\\)")
  (58 . ".\\(?:::\\|[:=]\\)")
  (59 . ".\\(?:;;\\|;\\)")
  (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
  (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
  (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
  (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
  (91 . ".\\(?:]\\)")
  (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
  (94 . ".\\(?:=\\)")
  (119 . ".\\(?:ww\\)")
  (123 . ".\\(?:-\\)")
  (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
  (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
  )
  ))
  (dolist (char-regexp alist)
  (set-char-table-range composition-function-table (car char-regexp)
  `([,(cdr char-regexp) 0 font-shape-gstring]))))

  ;; Do not write anything past this comment. This is where Emacs will
  ;; auto-generate custom variable definitions.
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838" t)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(erlang zen-and-art-theme white-sand-theme underwater-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme omtose-phellack-theme tangotango-theme lv transient zenburn-theme csv-mode toml-mode racer flycheck-rust cargo rust-mode undo-tree org-category-capture gntp org-mime parent-mode gitignore-mode fringe-helper git-gutter+ git-gutter marshal logito ht pos-tip flx anzu goto-chg json-snatcher json-reformat web-completion-data dash-functional pkg-info epl popup s diminish winum unfill fuzzy flycheck-credo f json-mode log4e tablist async wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper ivy flyspell-correct multiple-cursors rjsx-mode evil avy org docker-tramp packed elixir-mode auto-complete simple-httpd pcache alert haml-mode flycheck-elm flycheck-flow ujelly-theme elm-mode soft-morning-theme tern iedit markdown-mode sql-indent bind-key bind-map spinner hydra company smartparens highlight flycheck request projectile helm helm-core yasnippet skewer-mode js2-mode gh magit magit-popup git-commit with-editor dash powerline define-word yaml-mode xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spacemacs-theme spaceline smeargle slim-mode shell-pop scss-mode sass-mode reveal-in-osx-finder restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters quelpa pug-mode popwin persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-elixir neotree mwim multi-term move-text mmm-mode markdown-toc magit-gitflow magit-gh-pulls macrostep lorem-ipsum livid-mode linum-relative link-hint less-css-mode launchctl js2-refactor js-doc info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md flyspell-correct-helm flycheck-pos-tip flycheck-mix flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dockerfile-mode docker diff-hl company-web company-tern company-statistics column-enforce-mode color-identifiers-mode coffee-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile alchemist aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
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
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838" t)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(package-selected-packages
   '(sqlup-mode erlang zen-and-art-theme white-sand-theme underwater-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme omtose-phellack-theme tangotango-theme lv transient zenburn-theme csv-mode toml-mode racer flycheck-rust cargo rust-mode undo-tree org-category-capture gntp org-mime parent-mode gitignore-mode fringe-helper git-gutter+ git-gutter marshal logito ht pos-tip flx anzu goto-chg json-snatcher json-reformat web-completion-data dash-functional pkg-info epl popup s diminish winum unfill fuzzy flycheck-credo f json-mode log4e tablist async wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper ivy flyspell-correct multiple-cursors rjsx-mode evil avy org docker-tramp packed elixir-mode auto-complete simple-httpd pcache alert haml-mode flycheck-elm flycheck-flow ujelly-theme elm-mode soft-morning-theme tern iedit markdown-mode sql-indent bind-key bind-map spinner hydra company smartparens highlight flycheck request projectile helm helm-core yasnippet skewer-mode js2-mode gh magit magit-popup git-commit with-editor dash powerline define-word yaml-mode xterm-color ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tagedit spacemacs-theme spaceline smeargle slim-mode shell-pop scss-mode sass-mode reveal-in-osx-finder restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters quelpa pug-mode popwin persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-elixir neotree mwim multi-term move-text mmm-mode markdown-toc magit-gitflow magit-gh-pulls macrostep lorem-ipsum livid-mode linum-relative link-hint less-css-mode launchctl js2-refactor js-doc info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md flyspell-correct-helm flycheck-pos-tip flycheck-mix flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav dumb-jump dockerfile-mode docker diff-hl company-web company-tern company-statistics column-enforce-mode color-identifiers-mode coffee-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile alchemist aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
)

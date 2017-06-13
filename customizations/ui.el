(if (display-graphic-p)
    (load-theme 'lush 't)
  (load-theme 'default-dark 't))

;; Don't confirm smart mode line themes loading
(setq sml/no-confirm-load-theme t)

;; Enable smart mode line
(sml/setup)

;; Set smart mode line dark sheme
(setq sml/theme 'dark)

;; Turn off menu bar in console
(unless (display-graphic-p)
  (menu-bar-mode -1))

;; Don't show native OS scroll bars
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Disable tool bar
(tool-bar-mode -1)

;; Set cursor type to bar like in the Atom editor
(setq-default cursor-type 'bar)

;; Set the default font
(when (window-system)
  (set-default-font "Fira Code"))

;; Increase the line spacing
(setq-default line-spacing 2)

;; Show line numbers when run in the graphical mode
(when (display-graphic-p)
  (global-linum-mode 1))

;; Set size of line numbers
(defun setup-linum-ui ()
  (set-face-attribute 'linum nil :height 0.7))
(when (display-graphic-p) (setup-linum-ui))

;; Enable vertical mode for ido
(ido-vertical-mode 1)

;; Full path in title bar
(setq-default frame-title-format "%b (%f)")

;; No cursor blinking
(blink-cursor-mode 0)

;; Disable bell
(setq ring-bell-function 'ignore)

;; Indicate empty lines
(setq-default indicate-empty-lines 1)

;; Fix colors in Emacs shell to play nicely with zsh. Don't forget to
;; setenv TERM xterm-256color
(require 'xterm-color)
(progn (add-hook 'comint-preoutput-filter-functions 'xterm-color-filter)
       (setq comint-output-filter-functions (remove 'ansi-color-process-output comint-output-filter-functions))
       (setq font-lock-unfontify-region-function 'xterm-color-unfontify-region))

;; C-x l for toggle themes
(global-set-key (kbd "C-x l") 'toggle-dark-light-theme)

;; Enable ligatures
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

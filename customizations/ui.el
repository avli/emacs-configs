;; Set apropriate color theme
(when (display-graphic-p)
  (load-theme 'solarized-light 't))

;; Disable syntax highlighting in console
(unless (display-graphic-p)
  (global-font-lock-mode -1))

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

;; Set fonts for different OS
(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Monaco-11"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Don't ask user to allow smart mode line theme loading
(setq sml/no-confirm-load-theme 't)

;; Enable smart line mode
(sml/setup)

;; Change smart line mode theme to a dark one
(sml/apply-theme 'smart-mode-line-respectful)

;; Enable vertical mode for ido
(ido-vertical-mode 1)

;; Fix company mode tooltip annotation selecttion color. Without this
;; fix Clojure tooltips look ugly
(with-eval-after-load 'company
  (set-face-attribute
   'company-tooltip-annotation-selection nil
   :background "#69CABF"))

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

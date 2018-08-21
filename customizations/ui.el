(if (display-graphic-p)
    (load-theme 'solarized-dark 't)
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

;; Set fonts for different OS
(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Increase the line spacing
(setq-default line-spacing 2)

;; Show line numbers when run in the graphical mode
(when (display-graphic-p)
  (global-display-line-numbers-mode 1))

;; Set size of line numbers
(defun setup-linum-ui ()
  (set-face-attribute 'line-number nil :height 0.7 :foreground "SteelBlue"))

;; Match company tooltip colors with theme
(require 'company)
(set-face-attribute 'company-tooltip-annotation-selection nil :inherit 'company-tooltip-selection)

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

;; Function for toggling dark and light theme
(defun toggle-dark-light-theme ()
  (interactive)
  (if (member 'solarized-dark custom-enabled-themes)
      (progn
	(disable-theme 'solarized-dark)
	(load-theme 'solarized-light t)
	(setup-linum-ui))
    (progn
      (disable-theme 'solarized-light)
      (load-theme 'solarized-dark t)
      (setup-linum-ui))))

;; C-x l for toggle themes
(global-set-key (kbd "C-x l") 'toggle-dark-light-theme)

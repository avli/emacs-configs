(when (display-graphic-p)
  (load-theme 'solarized-dark 't))

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
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Show line numbers
(global-linum-mode 1)

;; Set size and color of line numbers
(set-face-attribute 'linum nil :height 0.7 :foreground "SteelBlue")

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

;; Match company tooltip colors with wombat theme
(with-eval-after-load 'company
  (progn
    ;; (set-face-attribute 'company-scrollbar-bg nil :background "#424242")
    ;; (set-face-attribute 'company-scrollbar-fg nil :background "#303030")
    ;; (set-face-attribute 'company-tooltip nil :background "#343434" :foreground "#857b6f")
    ;; (set-face-attribute 'company-tooltip-selection nil :background "#384048" :foreground "#a0a8b0")
    ;; (set-face-attribute 'company-tooltip-annotation nil :foreground "lime green")
    ;; (set-face-attribute 'company-tooltip-common nil :foreground "#8ac6f2")
    (set-face-attribute 'company-tooltip-annotation-selection nil :inherit 'company-tooltip-selection)
))

;; Function for toggling dark and light theme
(defun toggle-dark-light-theme ()
  (interactive)
  (if (find 'solarized-dark custom-enabled-themes)
      (progn
	(disable-theme 'solarized-dark)
	(load-theme 'solarized-light t))
    (progn
      (disable-theme 'solarized-light)
      (load-theme 'solarized-dark t))))

;; C-x l for toggle themes
(global-set-key (kbd "C-x l") 'toggle-dark-light-theme)

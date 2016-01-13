;; Set apropriate color theme
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

;; Set fonts for different OS
(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Inconsolata-dz for Powerline-14"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Don't ask user to allow smart mode line theme loading
(setq sml/no-confirm-load-theme 't)

;; Enable smart line mode
(sml/setup)

;; Change smart line mode theme to a dark one
(sml/apply-theme 'smart-mode-line-dark)

;; Enable vertical mode for ido
(ido-vertical-mode 1)

;; Tweak ido colors
(set-face-attribute 'ido-vertical-first-match-face nil
		    :foreground "#002b36" :background "#b58900")

;; Fix company mode tooltip annotation selecttion color. Without this
;; fix Clojure tooltips look ugly
(with-eval-after-load 'company
  (set-face-attribute
   'company-tooltip-annotation-selection nil
   :background "#00736F"))

;; Show line numbers everywhere in GUI
(when (display-graphic-p)
  (global-linum-mode 1))

;; ... but not in terminal emulators
(let ((hook (lambda () (linum-mode -1))))
  (dolist (mode '(shell-mode-hook
		  term-mode-hook
		  ansi-term-mode-hook
		  eshell-mode-hook
		  haskell-interactive-mode-hook))
    (add-hook mode hook)))

;; Make line numbers font smaller and set more appropriate font
(set-face-attribute 'linum nil :foreground "steel blue" :height 0.7)

;; Slightly change linum format
(setq linum-format (if (not window-system) "%4d " "%4d"))

;; Full path in title bar
(setq-default frame-title-format "%b (%f)")

;; No cursor blinking
(blink-cursor-mode 0)

;; Disable bell
(setq ring-bell-function 'ignore)

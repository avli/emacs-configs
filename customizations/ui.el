;; Set apropriate color theme
(when (display-graphic-p)
  (load-theme 'atom-one-dark 't))

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
  (setq default-frame-alist '((font . "M+ 1mn-13"))))
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

;; Adjust company mode colors to be less destructive
(with-eval-after-load 'company
  (set-face-attribute 'company-tooltip nil :background "#21252F")
  (set-face-attribute 'company-tooltip-common nil :background "#21252F" :foreground "#F5F5F5")
  (set-face-attribute 'company-tooltip-common-selection nil :background "#3E4451" :foreground  "#F5F5F5")
  (set-face-attribute 'company-tooltip-annotation nil :background "#21252F")
  (set-face-attribute 'company-preview-common nil :foreground "#F5F5F5"))

;; Fix company mode tooltip annotation selecttion color. Without this
;; fix Clojure tooltips look ugly
(with-eval-after-load 'company
  (set-face-attribute
   'company-tooltip-annotation-selection nil
   :background "#3E4451"))

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
(with-eval-after-load 'linum
  (set-face-attribute 'linum nil :foreground "steel blue" :height 0.7))

;; Slightly change linum format
(with-eval-after-load 'linum
  (setq linum-format (if (not window-system) "%4d " "%4d")))

;; Full path in title bar
(setq-default frame-title-format "%b (%f)")

;; No cursor blinking
(blink-cursor-mode 0)

;; Disable bell
(setq ring-bell-function 'ignore)

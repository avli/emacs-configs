;; Set apropriate color theme
(load-theme 'cyberpunk 't)

;; Turn off menu bar in console
(unless (display-graphic-p)
  (menu-bar-mode -1))

;; Don't show native OS scroll bars
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Disable tool bar
(tool-bar-mode -1)

;; Show line numbers in GUI
(when (display-graphic-p)
  (global-linum-mode 1))

;; Set fonts for different OS
(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Full path in title bar
(setq-default frame-title-format "%b (%f)")

;; No cursor blinking
(blink-cursor-mode 0)

;; Disable bell
(setq ring-bell-function 'ignore)

;; Cyberpunk theme tweaks
(when (equal '(cyberpunk) custom-enabled-themes)
  (progn
    (set-face-attribute 'mode-line nil :box nil)
    (set-face-attribute 'mode-line-inactive nil :box nil)
    (set-face-attribute 'linum nil :foreground "grey42" :height 0.7)))

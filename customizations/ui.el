;; Set apropriate color theme
(when (display-graphic-p)
  (load-theme 'lush 't))

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
  (setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

;; Full path in title bar
(setq-default frame-title-format "%b (%f)")

;; No cursor blinking
(blink-cursor-mode 0)

;; Disable bell
(setq ring-bell-function 'ignore)

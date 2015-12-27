(add-to-list 'custom-theme-load-path "~/.emacs.d/third-party/blackboard-theme")
(load-theme 'sanityinc-tomorrow-bright 't)

(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Monaco-13"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

(set-face-attribute 'mode-line nil :box nil)

(require 'term)
(set-face-attribute 'term-color-black nil :background "#000000")

(blink-cursor-mode 0)

(global-hl-line-mode 1)

(ido-vertical-mode 1)

(provide 'avli-ui)

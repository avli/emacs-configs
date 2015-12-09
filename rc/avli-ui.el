(load-theme 'sanityinc-tomorrow-bright 't)


(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Monaco-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

(setq-default cursor-type 'bar)
(blink-cursor-mode 0)

(global-hl-line-mode 1)
(set-face-attribute 'hl-line nil :background "Grey9")

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(require 'term)
(set-face-attribute 'term-color-black nil :background "black")

(set-variable 'linum-format "  ")

(provide 'avli-ui)

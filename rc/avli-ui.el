(load-theme 'cyberpunk 't)


(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

(setq-default cursor-type 'box)
(set-face-attribute 'cursor nil :background "#96CBFE")
(blink-cursor-mode 0)

(global-hl-line-mode 1)
(set-face-attribute 'hl-line nil :background "Grey9")

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(set-variable 'linum-format "  ")

(provide 'avli-ui)

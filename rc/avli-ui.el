(load-theme 'cyberpunk 't)

(setq default-frame-alist '((font . "Menlo-12")))
(setq-default cursor-type 'bar)

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(set-variable 'linum-format "  ")

(provide 'avli-ui)

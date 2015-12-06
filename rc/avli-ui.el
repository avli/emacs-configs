(load-theme 'base16-default-dark 't)

(setq default-frame-alist '((font . "Monaco-12")))
(setq-default cursor-type 'bar)

;; Enable smart mode line
(setq sml/no-confirm-load-theme t)
(sml/setup)

(provide 'avli-ui)

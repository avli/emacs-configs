(set-default 'shell-command "/bin/bash")

;; We set tab-width to display as 4 spaces globally, however that
;; option breaks shell output. To fix it we set tab-width to be 8
;; spaces locally in shell.
(add-hook 'shell-mode-hook (lambda () (setq tab-width 8)))

(provide 'avli-shell)

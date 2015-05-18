(add-to-list 'company-backends 'company-tern)
(add-hook 'js3-mode-hook 'avli/prog-mode-hook)
(add-hook 'js3-mode-hook 'tern-mode)
(add-hook 'js3-mode-hook (lambda () (local-set-key (kbd "C-c C-p") 'nodejs-repl)))

(provide 'avli-js)

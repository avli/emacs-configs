(add-to-list 'company-backends 'company-tern)
(add-hook 'js3-mode-hook 'avli/prog-mode-hook)
(add-hook 'js3-mode-hook 'tern-mode)

(provide 'avli-js)

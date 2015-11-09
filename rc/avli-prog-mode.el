(defun avli/prog-mode-hook ()
  (flycheck-mode 1)
  (smartparens-mode 1)

  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)

  (local-set-key (kbd "<f8>") 'flycheck-mode)

  (setq-local truncate-lines t)
  )

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

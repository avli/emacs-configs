(defun flycheck-setup ()
  (when (not (display-graphic-p))
    (setq flycheck-check-syntax-automatically nil)))

(defun avli/prog-mode-hook ()
  (smartparens-mode 1)

  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)

  (local-set-key (kbd "<f8>") 'flycheck-mode)

  (hl-line-mode 1)

  (setq-local truncate-lines t))

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

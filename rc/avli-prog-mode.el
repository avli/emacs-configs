(defun flycheck-setup ()
  (when (not (display-graphic-p))
    (setq flycheck-check-syntax-automatically nil)))

(defun linum-setup ()
  (when (display-graphic-p)
    (linum-mode 1)))

(defun avli/prog-mode-hook ()
  (flycheck-mode 1)
  (flycheck-setup)
;  (linum-setup)
  (smartparens-mode 1)

  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)

  (local-set-key (kbd "<f8>") 'flycheck-mode)

  (setq-local truncate-lines t)
  )

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

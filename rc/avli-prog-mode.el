(defun avli/prog-mode-hook ()
  (linum-mode 1)
  (hl-line-mode 1)
  (flycheck-mode)

  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)
  )

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

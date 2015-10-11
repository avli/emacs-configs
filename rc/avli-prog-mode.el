(defun maybe-linum-mode ()
  (if (display-graphic-p)
      (linum-mode 1))
  )

(defun avli/prog-mode-hook ()
;  (maybe-linum-mode)
;  (hl-line-mode 1)
  (flycheck-mode 1)
  (smartparens-mode 1)

  (local-set-key "\C-c:" 'uncomment-region)
  (local-set-key "\C-c;" 'comment-region)
  (local-set-key "\C-c\C-c" 'comment-region)

  (local-set-key (kbd "<f8>") 'flycheck-mode)
  )

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

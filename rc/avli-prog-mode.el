(defun avli/prog-mode-hook ()
  (linum-mode 1)
  (hl-line-mode 1)
  (local-set-key (kbd "<f7>") 'flyspell-prog-mode))

(add-hook 'prog-mode-hook 'avli/prog-mode-hook)

(provide 'avli-prog-mode)

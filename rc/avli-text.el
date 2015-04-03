(defun avli/text-mode-hook ()
  (flyspell-mode 1)
  (local-set-key (kbd "<f7>") 'flyspell-buffer))

(add-hook 'text-mode-hook 'avli/text-mode-hook)

(provide 'avli-text)
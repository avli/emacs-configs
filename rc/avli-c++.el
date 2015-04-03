(defun avli/c-mode-common-hook ()
  (setq c-set-style "linux")
  (setq c-basic-offset 4))

(add-hook 'c-mode-common-hook 'avli/c-mode-common-hook)

(provide 'avli-c++)

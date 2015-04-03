(defun avli/elisp-mode-hook ()
  (paredit-mode 1)
  (local-set-key "\C-cf" 'find-function)
  (local-set-key "\C-ck" 'find-function-on-key)
  )

(add-hook 'emacs-lisp-mode-hook 'avli/elisp-mode-hook)

(provide 'avli-elisp)

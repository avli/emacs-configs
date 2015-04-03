(defun avli/lisp-interaction-mode-hook ()
  (paredit-mode 1)
  (avli/prog-mode-hook))


(add-hook 'lisp-interaction-mode-hook 'avli/lisp-interaction-mode-hook)

(provide 'avli-lisp)

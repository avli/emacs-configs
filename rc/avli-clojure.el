(defun avli/clojure-mode-hook ()
  (smartparens-strict-mode 1)
  (rainbow-delimiters-mode 1)
  )

(add-hook 'clojure-mode-hook 'avli/clojure-mode-hook)

(provide 'avli-clojure)

(defun avli/clojure-mode-hook ()
  (paredit-mode 1)
  )


(add-hook 'clojure-mode 'avli/clojure-mode-hook)

(provide 'avli-clojure)

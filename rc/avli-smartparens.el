(require 'smartparens-config)

;; For details see the discussion here:
;; https://github.com/Fuco1/smartparens/issues/80

(defun avli/create-newline-and-enter-sexp (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. "
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(sp-local-pair 'c++-mode "{" nil :post-handlers '((avli/create-newline-and-enter-sexp "RET")))
(sp-local-pair 'c-mode "{" nil :post-handlers '((avli/create-newline-and-enter-sexp "RET")))
(sp-local-pair 'java-mode "{" nil :post-handlers '((avli/create-newline-and-enter-sexp "RET")))

(sp-use-paredit-bindings)

(provide 'avli-smartparens)

;;;;
;; Emacs Lisp
;;;;

;; Enable paredit for Emacs Lisp
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

;; Rainbow parentheses
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; Show function arguments hints in echo area
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;; Turn on autocompletion. Works out of box for Emacs Lisp
(add-hook 'emacs-lisp-mode-hook 'company-mode)

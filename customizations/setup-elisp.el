;;;;
;; Emacs Lisp
;;;;

;; Enable paredit for Emacs Lisp
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)

;; Rainbow parentheses
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;; Show function arguments hints in echo area
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)

;; Go to elisp function definitions with M-.
(add-hook 'emacs-lisp-mode-hook
	  (lambda () (local-set-key (kbd "M-.") 'find-function-at-point)))

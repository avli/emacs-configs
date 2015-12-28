;;;;
;; Clojure
;;;;

;; Enable paredit for Clojure
(add-hook 'clojure-mode-hook 'enable-paredit-mode)

;; Rainbow parentheses
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Show function arguments hints in echo area
(add-hook 'clojure-mode-hook 'eldoc-mode)

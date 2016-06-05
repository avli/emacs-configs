;;;;
;; Clojure
;;;;

;; Enable paredit for Clojure and ClojureScript As clojurescript-mode
;; is derived from the clojure-mode it's enough to add things to
;; clojure-mode-hook
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Rainbow parentheses
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Show function arguments hints in echo area
(add-hook 'clojure-mode-hook 'eldoc-mode)

;;;;
;; Clojure REPL
;;;;

;; Turn on paredit in Clojure REPL
(add-hook 'cider-repl-mode-hook 'paredit-mode)

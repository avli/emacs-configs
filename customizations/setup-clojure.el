;;;;
;; Clojure
;;;;

;; Enable paredit for Clojure and ClojureScript
(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'clojurescript-mode-hook 'enable-paredit-mode)

;; Rainbow parentheses
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojurescript-mode-hook 'rainbow-delimiters-mode)

;; Show function arguments hints in echo area
(add-hook 'clojure-mode-hook 'eldoc-mode)
(add-hook 'clojurescript-mode-hook 'eldoc-mode)

;; Turn on autocompletion. Company co-operates nicely with cider
(add-hook 'clojure-mode-hook 'company-mode)
(add-hook 'clojurescript-mode-hook 'company-mode)

;;;;
;; Clojure REPL
;;;;

;; Turn on company auto completion in Clojure REPL
(add-hook 'cider-repl-mode-hook 'company-mode)

;; Turn on paredit in Clojure REPL
(add-hook 'cider-repl-mode-hook 'enable-paredit-mode)

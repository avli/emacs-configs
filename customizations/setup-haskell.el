;;;;
;; Haskell
;;;;

;; Enable company mode when editing Haskell code
(add-hook 'haskell-mode-hook 'company-mode)

;; Enable company mode in Haskell REPL
(add-hook 'haskell-interactive-mode-hook 'company-mode)

;; Enable eldoc for getting functions signatures in Haskell mode and
;; Haskell REPL
(dolist (mode '(haskell-mode-hook haskell-interactive-mode-hook))
  (add-hook mode 'eldoc-mode))

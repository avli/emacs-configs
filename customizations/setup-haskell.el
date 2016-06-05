;;;;
;; Haskell
;;;;

;; Enable eldoc for getting functions signatures in Haskell mode and
;; Haskell REPL
(dolist (mode '(haskell-mode-hook haskell-interactive-mode-hook))
  (add-hook mode 'eldoc-mode))

;; Set up useful key bindings for Haskell mode
(add-hook 'haskell-mode-hook (lambda ()
			       (local-set-key (kbd "C-c C-p") 'haskell-interactive-bring)
			       (local-set-key (kbd "C-c C-l") 'haskell-process-load-file)))

(add-hook 'haskell-mode-hook (lambda ()
			       (add-to-list 'exec-path "/Users/andrey/Library/Haskell/bin")
			       (ghc-init)))

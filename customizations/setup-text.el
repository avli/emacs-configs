;;;;
;; Text
;;;;

;; Spell text while typing in all text modes, e.g. text-mode,
;; markdown-mode and others
(add-hook 'text-mode-hook 'flyspell-mode)

;; Automatically break lines longer than fill-column while typing
(add-hook 'text-mode-hook 'auto-fill-mode)

;; Fit content length to the window size
(add-hook 'text-mode-hook 'visual-line-mode)

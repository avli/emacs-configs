;;;;
;; TypeScript
;;;;

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (eldoc-mode 1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; format options
(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunctions nil))

;; automatically close curly braces
(add-hook 'typescript-mode-hook (lambda () (local-set-key (kbd "{") 'c-open-brace)))

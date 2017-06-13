;;;;
;; C/C++
;;;;

;; Disable the semantic backend
(eval-after-load "company"
  '(progn
     (setq company-backends (delete 'company-semantic company-backends))))

;; Enable company mode
(add-hook 'c-mode-hook 'company-mode)

;; Enable smart parents
(add-hook 'c-mode-hook 'smartparens-mode)

(require 'ess-site)

(defun avli/ess-mode-hook ()
  (setq ess-eval-visibly-p nil)
  (avli/prog-mode-hook)
  )

(add-hook 'ess-mode-hook 'avli/ess-mode-hook)

(provide 'avli-ess)

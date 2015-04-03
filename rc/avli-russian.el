(setq default-input-method 'russian-computer)

(defun set-russian-ispell-dict ()
  (ispell-change-dictionary "ru-ye"))
(defun set-default-ispell-dict ()
  (ispell-change-dictionary "default"))

(add-hook 'input-method-activate-hook 'set-russian-ispell-dict)
(add-hook 'input-method-deactivate-hook 'set-default-ispell-dict)


(provide 'avli-russian)

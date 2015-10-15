(defun avli/python-mode-hook ()
  (anaconda-mode)
  (avli/prog-mode-hook))

(add-to-list 'company-backends 'company-anaconda)
(add-hook 'python-mode-hook 'avli/python-mode-hook)

(provide 'avli-python)

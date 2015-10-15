(defun avli/python-mode-hook ()
  (avli/prog-mode-hook)
  (anaconda-mode)
  (eldoc-mode)
  (add-to-list 'company-backends 'company-anaconda)
  )

(add-hook 'python-mode-hook 'avli/python-mode-hook)

(provide 'avli-python)

(defun avli/python-mode-hook ()
  (anaconda-mode)
  (avli/prog-mode-hook))

(add-hook 'python-mode-hook 'avli/python-mode-hook)

(provide 'avli-python)

;;;;
;; Python
;;;;

;; Enable anaconda mode for Python
(add-hook 'python-mode-hook 'anaconda-mode)

;; Show function arguments hints in echo area
(add-hook 'python-mode-hook 'eldoc-mode)

;; Run Python interpreter when entering Python mode, without it eldoc
;; will complain about Python is not running
(add-hook 'python-mode-hook
	  (lambda () (run-python (python-shell-parse-command))))

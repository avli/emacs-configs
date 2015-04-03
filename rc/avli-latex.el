(setenv "PATH"
	(concat (getenv "PATH")
		":/usr/local/bin:/usr/texbin"))

(setq exec-path (setq exec-path
                      (append '("/usr/texbin") exec-path)))

(defun avli/latex-mode-hook ()
  (avli/text-mode-hook))

(add-hook 'tex-mode-hook 'avli/latex-mode-hook)
(add-hook 'latex-mode-hook 'avli/latex-mode-hook)

(provide 'avli-latex)

(setq custom-file "~/.emacs-custom.el")
(if (not (file-exists-p custom-file))
    (shell-command (format "touch %s" custom-file)))
(load custom-file)

(provide 'avli-custom)

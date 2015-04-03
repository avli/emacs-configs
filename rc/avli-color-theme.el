(if (display-graphic-p)
    (set-frame-parameter nil 'background-mode 'light)
  (setq frame-background-mode 'dark))

(load-theme 'solarized t)

(defun avli/lights-on ()
  (interactive)
  (set-frame-parameter nil 'background-mode 'light)
  (setq frame-background-mode 'light)
  (enable-theme 'solarized)
  )

(defun avli/lights-off ()
  (interactive)
  (set-frame-parameter nil 'background-mode 'dark)
  (setq frame-background-mode 'dark)
  (enable-theme 'solarized)
  )

(provide 'avli-color-theme)
(setq inhibit-splash-screen t)
(setq default-directory "~")

(setq exec-path (setq exec-path
                      (append '("/usr/local/bin") exec-path)))

(setq ring-bell-function 'ignore)
(column-number-mode 1)

(menu-bar-mode 1)

(setq auto-save-default nil)

(windmove-default-keybindings)

(set-default 'tab-width 4)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(set-default 'scroll-margin 1)
(set-default 'scroll-conservatively 10000)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defalias 'yes-or-no-p 'y-or-n-p)

(projectile-global-mode 1)

(provide 'avli-basic)

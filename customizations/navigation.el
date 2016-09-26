;; Easier navigation with C-x C-f
(ido-mode 1)

;; Allow partial matches, e.g. "ne" will match navigation.el in this
;; directory
(setq ido-enable-flex-matching t)

;; Turn this behavior off because it's annoying, e.g. when pressing
;; C-x C-f to create a new file, don't try to use existing
;; files/buffers names
(setq ido-use-filename-at-point nil)

;; Ido everywhere, even in dired
(setq ido-everywhere t)

;; Use ibuffer for displaying currenly opened buffers list
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Enable windmove keybindings. Jump between windows with shift +
;; direction arrow
(windmove-default-keybindings)

;; projectile everywhere!
(projectile-global-mode)

;; Call imenu list by C-'
(global-set-key (kbd "C-'") #'imenu-list-minor-mode)

;; Call smex by M-x
(global-set-key (kbd "M-x") 'smex)

;; Turn on "go to recent file" functionality
(recentf-mode 1)

;; Call recent files list with C-x r
(global-set-key (kbd "C-x r") 'recentf-open-files)

;; Finally enable helm
(helm-mode 1)

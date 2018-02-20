;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Add /usr/loca/bin to exec path. Especially useful for Mac OS X and
;; brew
(setq exec-path (setq exec-path
                      (append '("/usr/local/bin") exec-path)))

;; Because of GUI applications don't load ~/.bashrc file it is
;; necessary to add extra paths manually
(when (display-graphic-p)
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH"))))

;; Store customizations made with customize-* in ~/.emacs-custom.el
;; instead of ~/.emacs.d/init.el
(setq custom-file "~/.emacs-custom.el")

;; It's not enough to redefine custom file path, we need to explicitly
;; load it
(when (file-exists-p custom-file)
  (load custom-file))

;; Enable symon (Emacs system monitor)
(symon-mode)

;; Nyan mode
(nyan-mode)

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

;; Show changes in git repositories
(global-git-gutter-mode 1)

;; zsh is the default shell on macOS since Catalina. The shipped bash
;; version shows an annoying message that suggests switching on zsh.
;; Let's assume that if there's a bash version from brew, the user
;; wants to use it instead of zsh. At least I do!
(let ((brew-bash "/usr/local/bin/bash"))
  (if (and (file-exists-p brew-bash)
	   (eq system-type 'darwin))
      (setq explicit-shell-file-name brew-bash)))

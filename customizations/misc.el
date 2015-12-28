;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)

;; Add /usr/loca/bin to exec path. Especially useful for Mac OS X and
;; brew
(setq exec-path (setq exec-path
                      (append '("/usr/local/bin") exec-path)))


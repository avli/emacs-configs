
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq avli-conf-dir (concat user-emacs-directory "rc"))
(add-to-list 'load-path avli-conf-dir)

(require 'avli-packages)
(require 'avli-basic)
(require 'avli-ui)
(require 'avli-key-bindings)
(require 'avli-completion)
(require 'avli-prog-mode)
(require 'avli-c++)
(require 'avli-python)
(require 'avli-text)
(require 'avli-latex)
(require 'avli-elisp)
(require 'avli-html)
(require 'avli-js)
(require 'avli-clojure)
(require 'avli-erlang)
(require 'avli-google-this)
(require 'avli-google-translate)
(require 'avli-magit)
(require 'avli-smartparens)
(require 'avli-shell)
(require 'avli-term)
(require 'avli-ess)
(require 'avli-org)
(require 'avli-russian)
(require 'avli-custom)

(provide 'init)
;;; init.el ends here

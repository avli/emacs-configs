(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defvar avli/package-list
  '(color-theme-solarized
	better-defaults
    company
    anaconda-mode
    flycheck
    magit
    multi-term
    clojure-mode
    cider
    elixir-mode
    alchemist
    paredit
    sr-speedbar)
  )

(defun avli/package-install (package)
  (when (and (not (package-installed-p package))
             (assoc package package-archive-contents))
    (package-install package)))

(dolist (package avli/package-list)
  (avli/package-install package))

(provide 'avli-packages)

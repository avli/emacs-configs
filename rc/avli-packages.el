(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defvar avli/package-list
  '(
	better-defaults
	color-theme-solarized
	lush-theme
	projectile
	rainbow-delimeters
    alchemist
    anaconda-mode
    cider
    clojure-mode
    company
    company-tern
    elixir-mode
    emmet-mode
    erlang
    flycheck
    google-this
    google-translate
    js3-mode
    magit
    multi-term
    paredit
    smartparens
    tern-mode
    web-mode
	)
  )

(defun avli/package-install (package)
  (when (and (not (package-installed-p package))
             (assoc package package-archive-contents))
    (package-install package)))

(dolist (package avli/package-list)
  (avli/package-install package))

(provide 'avli-packages)

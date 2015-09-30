(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar avli/package-list
  '(
	better-defaults
	color-theme-solarized
	lush-theme
	projectile
	rainbow-delimiters
    rainbow-mode
    alchemist
    ample-theme
    anaconda-mode
    cider
    birds-of-paradise-plus-theme
    clojure-mode
    company
    company-tern
    elixir-mode
    evil
    emmet-mode
    erlang
    flycheck
    google-this
    google-translate
    js3-mode
    nodejs-repl
    magit
    multi-term
    paredit
    smartparens
    tern-mode
    virtualenvwrapper
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

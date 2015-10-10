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
    alchemist
    ample-theme
    anaconda-mode
    birds-of-paradise-plus-theme
    cider
    clojure-mode
    company
    company-tern
    elixir-mode
    emmet-mode
    erlang
    evil
    flycheck
    fzf
    google-this
    google-translate
    js3-mode
    magit
    multi-term
    nodejs-repl
    paredit
    rainbow-mode
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

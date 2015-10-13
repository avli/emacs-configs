(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar avli/package-list
  '(
	better-defaults
	lush-theme
	solarized-theme
    alchemist
    ample-theme
    anaconda-mode
    birds-of-paradise-plus-theme
    cider
    clojure-mode
    color-theme-sanityinc-tomorrow
    company
    company-tern
    elixir-mode
    emmet-mode
    erlang
    ess
    evil
    flycheck
    fzf
    google-this
    google-translate
    js3-mode
    magit
    markdown-mode
    multi-term
    nodejs-repl
    paredit
    rainbow-delimiters
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

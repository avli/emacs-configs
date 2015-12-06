(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defvar avli/package-list
  '(
    ace-jump-mode
    ag
    base16-theme
	better-defaults
    solarized-theme
    alchemist
    anaconda-mode
    cider
    clojure-mode
    color-theme-sanityinc-tomorrow
    company
    company-anaconda
    company-tern
    elixir-mode
    emmet-mode
    erlang
    ess
    flycheck
    fzf
    google-this
    google-translate
    js3-mode
    magit
    markdown-mode
    multi-term
    nodejs-repl
    projectile
    rainbow-delimiters
    rainbow-mode
    smartparens
    smart-mode-line
    tern-mode
    virtualenvwrapper
    web-mode
    yaml-mode
	)
  )

(defun avli/package-install (package)
  (when (and (not (package-installed-p package))
             (assoc package package-archive-contents))
    (package-install package)))

(dolist (package avli/package-list)
  (avli/package-install package))

(provide 'avli-packages)

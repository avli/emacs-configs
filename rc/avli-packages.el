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
    better-defaults
    alchemist
    anaconda-mode
    cider
    clojure-mode
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
    ido-vertical-mode
    js3-mode
    magit
    markdown-mode
    multi-term
    nodejs-repl
    projectile
    rainbow-delimiters
    rainbow-mode
    smartparens
    tern-mode
    virtualenvwrapper
    web-mode
    yaml-mode
    zenburn-theme
	)
  )

(defun avli/package-install (package)
  (when (and (not (package-installed-p package))
             (assoc package package-archive-contents))
    (package-install package)))

(dolist (package avli/package-list)
  (avli/package-install package))

(provide 'avli-packages)

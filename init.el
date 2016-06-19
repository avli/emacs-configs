;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Load and activate Emacs packages
(package-initialize)

;; If Emacs run the first time, download package repositories
;; contents
(unless package-archive-contents
  (package-refresh-contents))

;; Packages we want to install
(defvar list-of-packages
  '(;; Integration with the Clojure REPL. Note, that if you want to use
    ;; cider it is improtant to add necessary dependencies to your
    ;; ~/.lein/profiles.clj file, e.g.
    ;;
    ;; {:repl {:dependencies [[org.clojure/clojure "1.8.0"]
    ;;                        [org.clojure/tools.nrepl "0.2.12"]]
    ;;         :plugins [[cider/cider-nrepl "0.11.0-snapshot"]]}}
    ;;
    ;; The versions may vary depend on Emacs cider version
    cider

    ;; Project navigation
    projectile

    ;; Colorful paranthesis. Useful in lisps
    rainbow-delimiters

    ;; Git integration
    magit

    ;; Making handling lisp expressions easier
    paredit

    ;; Autocompletion for Emacs. May be annoying sometimes so let's
    ;; use it only when it's necesary
    company

    ;; Anaconda data sourse for company mode. This allows company to
    ;; use anaconda as a source of completion
    company-anaconda

    ;; Markdown support
    markdown-mode

    ;; A Python IDE, e.g. autocompletion, jumping to definitions and
    ;; so on. Please, note if you use brewed version of Python on Mac
    ;; OS X you need to consult with the following guide:
    ;; https://gist.github.com/mahmoudimus/3ccaf9811e50fcd2a410
    anaconda-mode

    ;; Syntax highlighting for Docker files
    dockerfile-mode

    ;; Cool vertical mode for ido
    ido-vertical-mode

    ;; Haskell support
    haskell-mode

    ;; XTerm colors support. Important for the integration with zsh
    xterm-color

    ;; A useful plugin for navigation through the code similar to
    ;; Vim's tagbar
    imenu-list

    ;; Fuzzy navigation through Emacs commands
    smex

    ;; An apropriate color theme
    monokai-theme
    ))

;; Install packages if not installed already
(dolist (p list-of-packages)
  (unless (package-installed-p p)
    (package-install p)))

;;;;
;; Customization
;;;;

;; Add customizations directory to the load path. This makes possible
;; to load particular emacs lisp files from it
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Load Emacs UI customizations. Here we set up a color theme,
;; enable/disable different interface elemenets and so on
(load "ui.el")

;; Customizations for easier navigation between files and buffers
(load "navigation.el")

;; More convinient editing
(load "editing.el")

;; Stuff doesn't hit other categories
(load "misc.el")

;; Language-specific customizations

(load "setup-clojure.el")
(load "setup-elisp.el")
(load "setup-haskell.el")
(load "setup-python.el")
(load "setup-text.el")

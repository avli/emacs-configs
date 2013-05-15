;; adding custom plugins path to load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; openSUSE fix
(require 'delsel)

;; color theme setup
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)

;; solarized color theme support
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-solarized")
(require 'color-theme-solarized)
(when (display-graphic-p) (color-theme-standard)) ; just for GUI

;; disable backup
(setq backup-inhibited t)

;; disable auto save
(setq auto-save-default nil)

;; enable auto indentation
(define-key global-map (kbd "RET") 'newline-and-indent)

;; enable linum mode
(global-linum-mode 1)

;; column numbers mode
(column-number-mode 1)

;; disable toolbar
(tool-bar-mode 0)

;; disable scrollbar
(scroll-bar-mode 0)

;; disable splash screen
(setq inhibit-splash-screen t)

;; switching between buffers with shift + arrow
(windmove-default-keybindings)

;; just 'y' or 'n' for questions
(defalias 'yes-or-no-p 'y-or-n-p)

;; cmake mode
(require 'cmake-mode)
(setq auto-mode-alist
      (append '(("CMakeLists\\.txt\\'" . cmake-mode)
		("\\.cmake\\'" . cmake-mode))
	      auto-mode-alist))

;; makefile mode
(setq auto-mode-alist
      (append '(("\\.mak\\'" . makefile-mode))
	      auto-mode-alist))


;; org-mode
;; I've taken it from here: http://habrahabr.ru/post/105300/
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cb" 'org-iswitchb)
(setq org-log-done t)

;; I want week starts with Monday
(setq calendar-week-start-day 1)

;; changing date format
(defun insert-date ()
  "Insert current date yyyy-mm-dd."
  (interactive)
  (when (region-active-p)
    (delete-region (region-beginning) (region-end) )
    )
  (insert (format-time-string "%d.%m.%Y"))
  )

;; font size change bindings
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; start eshell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'eshell)

;; start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

;; magit activation
(add-to-list 'load-path "~/.emacs.d/lisp/magit-1.1.1")
(require 'magit)

;; emacs-for-python
(load-file "~/.emacs.d/lisp/emacs-for-python-0.3/epy-init.el")

;; switching on ido mode
(require 'ido)

;; IRC client
(add-to-list 'load-path "~/.emacs.d/lisp/erc/share/site-lisp/erc")
(require 'erc)

;; Haskell mode
;; see documentation on https://github.com/haskell/haskell-mode
(load "~/.emacs.d/lisp/haskell-mode/haskell-site-file")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; Clojure langiage support
(add-to-list 'load-path "~/.emacs.d/lisp/technomancy-clojure-mode")
(require 'clojure-mode)
(require 'paredit)
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;; dirtree plugin
(add-to-list 'load-path "~/.emacs.d/lisp/dirtree")
(require 'dirtree)

;; ruby mode options
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor\\'" . ruby-mode))
(add-hook 'ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

;; Erlang support
(add-to-list 'load-path "/usr/local/Cellar/erlang/R15B03-1/lib/erlang/lib/tools-2.6.8/emacs/")
(setq erlang-root-dir "/usr/local/Cellar/erlang/R15B03-1/")
(add-to-list 'exec-path "/usr/local/Cellar/erlang/R15B03-1/bin")
(require 'erlang-start)
(add-to-list 'ac-modes 'erlang-mode)

;; YAML support
(require 'yaml-mode)

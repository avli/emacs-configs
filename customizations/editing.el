;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Delete trailing whitespaces when saving file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Disable backups and auto save, use VCS instead!
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Show column numbers in mode line
(column-number-mode 1)

;; Syntax checker
(global-flycheck-mode 1)

;; comments
(defun toggle-comment-dwim ()
  "comment or uncomment current region or line"
  (interactive)
  (if (region-active-p)
      (let ((begin (region-beginning))
	    (end (region-end)))
	(comment-or-uncomment-region begin end))
    (comment-or-uncomment-region (line-beginning-position) (line-end-position))))
(global-set-key (kbd "C-;") 'toggle-comment-dwim)

;; C-o and C-O behaves like o and O commands in vi (add new line above
;; and below)
(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(global-set-key (kbd "C-o") 'vi-open-line-above)
(global-set-key (kbd "C-c o") 'vi-open-line-below)

;; Automatically insert close curly brace in C-like languages
(defun c-open-brace ()
  (interactive)
  (insert "{")
  (newline)
  (insert "}")
  (indent-according-to-mode)
  (previous-line)
  (end-of-line)
  (newline-and-indent))

;; Change font size with C-+ and C--. Much better than default C-x C-+
;; and C-x C--!
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Call magit status with C-x g when editing file under version
;; control
(global-set-key (kbd "C-x g") 'magit-status)

;; Company mode configuration
(with-eval-after-load 'company
;; Rebind company keys. Select from suggestions using M-n and M-p is very inconvinient! C-n and C-p are much better
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous)
  ;; No delay before completion start
  (setq company-idle-delay 0)
  ;; Start completion after the first symbol has been pressed
  (setq company-minimum-prefix-length 1)
  ;; Ignore case when searching completions
  (setq company-dabbrev-code-ignore-case 1)
  ;; By default dabbrev ignores everything shorter than 4 symbol, but
  ;; we want to autocomplete everything, aren't we?
  (setq company-dabbrev-minimum-length 1))

;; Don't truncate long lines, I think it's all modern editors default
;; behavior
(setq-default truncate-lines 0)

;; This scary function was borrowed from
;; http://ru-emacs.livejournal.com/82428.html and makes Emacs to
;; understand commands when system keyboard layout is set on something
;; different than English one
(defun reverse-input-method (input-method)
  "Build the reverse mapping of single letters from INPUT-METHOD."
  (interactive
   (list (read-input-method-name "Use input method (default current): ")))
  (if (and input-method (symbolp input-method))
      (setq input-method (symbol-name input-method)))
  (let ((current current-input-method)
        (modifiers '(nil (control) (meta) (control meta))))
    (when input-method
      (activate-input-method input-method))
    (when (and current-input-method quail-keyboard-layout)
      (dolist (map (cdr (quail-map)))
        (let* ((to (car map))
               (from (quail-get-translation
                      (cadr map) (char-to-string to) 1)))
          (when (and (characterp from) (characterp to))
            (dolist (mod modifiers)
              (define-key local-function-key-map
                (vector (append mod (list from)))
                (vector (append mod (list to)))))))))
    (when input-method
      (activate-input-method current))))

;; If some other layout is used replace russian-computer with
;; preferable input method
(reverse-input-method 'russian-computer)

;; Use own dictionary that supports both English and Russian.
;; See: https://gist.github.com/avli/57d191d92a6ad8b19be9d15cc55132b7
(set-default 'ispell-program-name "aspell")
(set-default 'ispell-aspell-dict-dir "~/.emacs.d")
(set-default 'ispell-dictionary "ru")

;; Finally - evil mode!
;; (evil-mode 1)

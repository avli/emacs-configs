;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Delete trailing whitespaces when saving file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Disable backups and auto save, use VCS instead!
(setq-default backup-inhibited t)
(setq-default auto-save-default nil)

;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; C-o and C-O bahaves like o and O commands in vi (add new line above
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

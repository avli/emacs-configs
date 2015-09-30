(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "<f5>") 'avli/lights-off)
(global-set-key (kbd "<f6>") 'avli/lights-on)

(global-set-key (kbd "C-x g") 'magit-status)

(global-set-key (kbd "C-c TAB") 'company-complete)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; These two functions borrowed from
;; http://stackoverflow.com/questions/2173324/emacs-equivalents-of-vims-dd-o-o
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

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-c t") 'todo-show)
(global-set-key (kbd "C-c i") 'todo-insert-item)
(global-set-key (kbd "C-c j") 'todo-jump-to-category)

;; This fixes windmove keys in tmux for me
(global-set-key "\M-[1;2A" 'windmove-up)
(global-set-key "\M-[1;2B" 'windmove-down)
(global-set-key "\M-[1;2C" 'windmove-right)
(global-set-key "\M-[1;2D" 'windmove-left)

(global-set-key "\M-[1;6A" 'enlarge-window)
(global-set-key "\M-[1;6B" 'shrink-window)
(global-set-key "\M-[1;6C" 'enlarge-window-horizontally)
(global-set-key "\M-[1;6D" 'shrink-window-horizontally)

(provide 'avli-key-bindings)

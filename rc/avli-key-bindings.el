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

(defun avli/new-line-and-indent-above ()
  (interactive)
  (previous-line)
  (end-of-line)
  (newline-and-indent)
  )

(defun avli/new-line-and-indent-below ()
  (interactive)
  (end-of-line)
  (newline-and-indent)
  )

(global-set-key (kbd "C-o") 'avli/new-line-and-indent-above)
(global-set-key (kbd "C-c o") 'avli/new-line-and-indent-below)

(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-c t") 'todo-show)
(global-set-key (kbd "C-c i") 'todo-insert-item)
(global-set-key (kbd "C-c j") 'todo-jump-to-category)

(provide 'avli-key-bindings)

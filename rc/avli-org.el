;; Resolve conflicts with windmove
(setq org-replace-disputed-keys t)

;; Don't allow to close tasks when there are unfinished subtasks
(setq org-enforce-todo-dependencies t)

;; Attach timestamp to each closed task
(setq org-log-done 'time)

(provide 'avli-org)

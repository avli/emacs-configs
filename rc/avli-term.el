(require 'multi-term)

(global-set-key (kbd "C-x m") 'multi-term-next)
(global-set-key (kbd "C-x M") 'multi-term)

(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))
            (add-to-list 'term-bind-key-alist '("C-c C-j" . term-line-mode))
            (add-to-list 'term-bind-key-alist '("C-c C-k" . term-char-mode))
            (add-to-list 'term-bind-key-alist '("C-c C-q" . term-pager-toggle))
            ))

(provide 'avli-term)

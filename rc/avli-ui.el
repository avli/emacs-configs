(add-to-list 'custom-theme-load-path "~/.emacs.d/third-party/blackboard-theme")
(load-theme 'zenburn 't)

(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

(blink-cursor-mode 0)

(global-hl-line-mode 1)

(ido-vertical-mode 1)

(provide 'avli-ui)

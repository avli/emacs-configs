(add-to-list 'custom-theme-load-path "~/.emacs.d/third-party/blackboard-theme")
(load-theme 'cyberpunk 't)

(set-face-attribute 'mode-line nil
                    :box nil)

(cond
 ((string-equal system-type "darwin")
  (setq default-frame-alist '((font . "Menlo-12"))))
 ((string-equal system-type "gnu/linux")
  ((setq default-frame-alist '((font . "DejaVu Sans Mono-12"))))))

(setq-default cursor-type 'box)
(set-face-attribute 'cursor nil :background "#96CBFE")
(blink-cursor-mode 0)

(global-hl-line-mode 1)
(set-face-attribute 'hl-line nil :background "Grey9")

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

(ido-vertical-mode 1)

(require 'linum)
(set-face-attribute 'linum nil :background "black")

(require 'term)
(set-face-attribute 'term-color-black nil :background "black")

(set-variable 'linum-format "  ")

(provide 'avli-ui)

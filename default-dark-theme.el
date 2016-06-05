(deftheme default-dark
  "Created 2016-04-07.")

(custom-theme-set-faces
 'default-dark
 '(show-paren-match ((t (:background "#333399"))))
 '(region ((t (:background "#464740"))))
 '(default ((t (:inherit nil :stipple nil :background "#0C1021" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(mode-line ((t (:background "#434343" :foreground "white" :height 0.9 :box (:line-width -1 :style released-button)))))
 '(mode-line-inactive ((t (:background "#222222" :foreground "grey42" :height 0.9 :box (:line-width -1 :style nil)))))
 '(font-lock-string-face ((t (:foreground "#5BC039"))))
 '(font-lock-comment-face ((t (:foreground "#ACACAC"))))
 '(font-lock-function-name-face ((t (:foreground "#EE5E08"))))
 '(font-lock-keyword-face ((t (:foreground "#F3D82C")))))

(provide-theme 'default-dark)

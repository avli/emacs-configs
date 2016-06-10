(deftheme default-dark
  "Created 2016-04-07.")

(custom-theme-set-faces
 'default-dark
 '(show-paren-match ((t (:background "#333399"))))
 '(region ((t (:background "#464740"))))
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(company-tooltip ((t (:background "#cccccc" :foreground "black"))))
 '(company-scrollbar-bg ((t (:background "#999999"))))
 '(company-scrollbar-fg ((t (:background "#555555"))))
 '(mode-line ((t (:background "darkblue" :foreground "grey85" :box (:line-width -1 :style released-button))))))

(provide-theme 'default-dark)

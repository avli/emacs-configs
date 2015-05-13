(setq google-translate-default-source-language "en")
(setq google-translate-default-target-language "ru")

(global-set-key (kbd "C-x t d") 'google-translate-at-point)
(global-set-key (kbd "C-x t r") 'google-translate-at-point-reverse)

(provide 'avli-google-translate)

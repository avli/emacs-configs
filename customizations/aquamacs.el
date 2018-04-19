;; Aquamacs specific settings

;; Install the latest version of python-mode to replace one
;; that comes with Aquamacs
(package-install 'python-mode)

;; Activate the version of python-mode from melpa
(require 'python)

;; Fix warning about Python interpreter and readline, blah-blah-blah
(setq python-shell-completion-native-enable nil)

;; Disable tabs
(tabbar-mode -1)

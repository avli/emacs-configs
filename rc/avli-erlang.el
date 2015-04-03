(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.7.1/emacs"
                       load-path))
(setq erlang-root-dir "/usr/local")
(setq exec-path (cons "/usr/local/bin" exec-path))
(require 'erlang-start)

(add-hook 'erlang-mode-hook 'avli/prog-mode-hook)

(provide 'avli-erlang)

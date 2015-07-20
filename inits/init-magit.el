(require 'magit)

(setq magit-status-buffer-switch-function 'switch-to-buffer
      magit-log-arguments '("--graph" "--decorate" "--color"))

(provide 'init-magit)

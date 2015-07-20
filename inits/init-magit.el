(require 'magit)

(setq magit-status-buffer-switch-function 'switch-to-buffer
      magit-log-section-arguments '("--graph" "--decorate" "--color"))

(provide 'init-magit)

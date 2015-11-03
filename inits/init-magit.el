;; magit
(require 'magit)

(setq
 magit-push-always-verify nil
 magit-revert-buffers 'silent
 magit-status-buffer-switch-function 'switch-to-buffer
 magit-log-arguments '("--graph" "--decorate" "--color"))

(provide 'init-magit)

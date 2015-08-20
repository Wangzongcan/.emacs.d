;; magit
(use-package magit
  :defer t
  :config
  (progn
    (setq magit-status-buffer-switch-function 'switch-to-buffer
          magit-log-arguments '("--graph" "--decorate" "--color"))))

(provide 'init-magit)

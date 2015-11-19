(use-package magit
  :ensure t
  :defer t
  :init
  (setq magit-push-always-verify nil
        magit-revert-buffers 'silent
        magit-log-arguments '("--graph" "--decorate" "--color")))

(provide 'init-magit)

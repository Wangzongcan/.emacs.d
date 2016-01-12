(use-package projectile
  :ensure t
  :config
  (setq projectile-enable-cacheing t
        projectile-completion-system 'ivy)
  (projectile-global-mode))

(provide '30-projectile)

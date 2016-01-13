(use-package projectile
  :ensure t
  :config
  (setq projectile-enable-cacheing t
        projectile-completion-system 'ivy)
  (projectile-global-mode))

(use-package projectile-rails
  :ensure t
  :config
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide '30-projectile)

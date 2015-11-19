(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ivy)
  (projectile-global-mode))

(use-package projectile-rails
  :ensure t
  :defer t
  :config
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide 'init-projectile)

(use-package projectile
  :ensure t
  :init (add-hook 'after-init-hook #'projectile-global-mode)
  :config
  (setq projectile-completion-system 'ivy))

(use-package projectile-rails
  :ensure t
  :init
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide 'init-projectile)

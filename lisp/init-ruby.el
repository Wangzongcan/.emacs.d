(use-package rbenv
  :ensure t
  :config
  (setq rbenv-show-active-ruby-in-modeline nil)

  (global-rbenv-mode))

(use-package ruby-mode
  :defer t
  :config
  (use-package smartparens-ruby)
  (setq ruby-insert-encoding-magic-comment nil))

(use-package projectile-rails
  :ensure t
  :config
  (projectile-rails-global-mode))

(use-package rspec-mode
  :ensure t
  :config
  (inf-ruby-switch-setup))

(provide 'init-ruby)

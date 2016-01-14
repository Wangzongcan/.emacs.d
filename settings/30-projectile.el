(use-package projectile
  :ensure t
  :init
  (setq projectile-known-projects-file
        (expand-file-name "projectile-bookmarks.eld" cache-directory))
  :config
  (setq projectile-enable-cacheing t
        projectile-completion-system 'ivy
        projectile-cache-file
        (expand-file-name "projectile.cache" cache-directory))

  (projectile-global-mode))

(use-package projectile-rails
  :ensure t
  :config
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide '30-projectile)

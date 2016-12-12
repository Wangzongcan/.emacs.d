(use-package projectile
  :ensure t
  :init
  (setq projectile-known-projects-file
        (expand-file-name "projectile-bookmarks.eld" user-cache-directory))
  :config
  (projectile-mode)
  (setq projectile-switch-project-action 'projectile-dired)
  (setq projectile-completion-system 'ivy)
  (setq projectile-enable-caching t
        projectile-cache-file
        (expand-file-name "projectile.cache" user-cache-directory)))

(use-package projectile-rails :ensure t)

(provide 'init-projectile)

(require 'projectile)
(setq projectile-enable-caching t
      projectile-completion-system 'ivy
      projectile-cache-file (expand-file-name "projectile.cache" cache-dir)
      projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" cache-dir))

(projectile-global-mode)

(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(provide 'projectile-settings)

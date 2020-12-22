(use-package projectile
  :hook (after-init . projectile-mode)
  :bind-keymap ("C-c p" . projectile-command-map)
  :custom
  (projectile-enable-caching t))

(use-package counsel-projectile
  :hook (after-init . counsel-projectile-mode))

(provide 'init-projectile)

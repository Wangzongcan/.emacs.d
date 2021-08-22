(use-package projectile
  :hook (after-init . projectile-mode)
  :bind-keymap ("C-c p" . projectile-command-map)
  :init
  (setq projectile-dynamic-mode-line nil))

(provide 'init-projectile)

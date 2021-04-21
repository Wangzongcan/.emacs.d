(use-package projectile
  :defer t
  :bind-keymap ("C-c p" . projectile-command-map)
  :init
  (setq projectile-dynamic-mode-line nil)
  :config
  (projectile-mode +1))

(provide 'init-projectile)

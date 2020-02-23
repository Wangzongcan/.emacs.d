(use-package projectile
  :diminish
  :bind-keymap ("C-c p" . projectile-command-map)
  :config
  (setq projectile-completion-system 'ivy))

(use-package counsel-projectile
  :hook (after-init . counsel-projectile-mode))

(provide 'init-projectile)

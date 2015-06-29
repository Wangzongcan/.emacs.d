;; projectile
(projectile-global-mode)

(setq projectile-completion-system 'helm)

(add-hook 'projectile-mode-hook 'projectile-rails-on)

(provide 'init-projectile)

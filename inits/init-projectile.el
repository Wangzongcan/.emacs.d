;; projectile
(use-package projectile
  :defer t
  :init
  (progn
    (projectile-global-mode)
    (setq projectile-completion-system 'ivy)))

;; projectile-rails
(use-package projectile-rails
  :defer t
  :init
  (progn
    (add-hook 'projectile-mode-hook 'projectile-rails-on)))

(provide 'init-projectile)

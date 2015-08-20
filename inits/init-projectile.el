;; projectile
(use-package projectile
  :defer t
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-completion-system 'helm)))

;; projectile-rails
(use-package projectile-rails
  :defer t
  :init
  (progn
    (add-hook 'projectile-mode-hook 'projectile-rails-on)))

(provide 'init-projectile)

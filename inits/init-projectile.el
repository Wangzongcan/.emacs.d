;; projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'ivy)

;; projectile-rails
(require 'projectile-rails)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(provide 'init-projectile)

;; Projectile
(package-install 'projectile)

(require 'projectile)
(projectile-global-mode)

(setq projectile-completion-system 'helm)

(provide 'init-projectile)

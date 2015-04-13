;; Projectile
(projectile-global-mode)

(setq projectile-completion-system 'helm)

;; Projectile-Rails
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(require 'el-init)
(el-init-provide)

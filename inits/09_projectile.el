(projectile-global-mode)

(eval-after-load "projectile"
  '(progn
     (require 'projectile-rails)

     (setq projectile-completion-system 'helm)
     (add-hook 'projectile-mode-hook 'projectile-rails-on)

     (eval-after-load "projectile-rails"
       '(progn
          (require 'discover)

          (global-discover-mode 1)))))

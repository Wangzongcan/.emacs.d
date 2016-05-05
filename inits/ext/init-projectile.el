(use-package projectile
  :ensure t
  :init
  (setq projectile-known-projects-file
        (expand-file-name "projectile-bookmarks.eld" emacs-savefile-directory))
  :config
  (setq projectile-enable-cacheing t
        projectile-completion-system 'ivy
        projectile-cache-file
        (expand-file-name "projectile.cache" emacs-savefile-directory))

  (projectile-global-mode))

(use-package projectile-rails
  :ensure t
  :diminish projectile-rails-mode
  :config
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide 'init-projectile)

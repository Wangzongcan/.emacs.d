(use-package projectile
  :ensure t
  :init
  (setq projectile-known-projects-file
        (expand-file-name "projectile-bookmarks.eld" emacs-cache-directory))
  :config
  (setq projectile-enable-cacheing t
        projectile-completion-system 'ivy
        projectile-cache-file
        (expand-file-name "projectile.cache" emacs-cache-directory))

  (projectile-global-mode))

(use-package projectile-rails
  :ensure t
  :config
  (add-hook 'projectile-mode-hook 'projectile-rails-on))

(provide 'emacs-projectile)

(use-package projectile
  :ensure t
  :init
  (setq projectile-enable-caching t
        projectile-cache-file (expand-file-name "projectile.cache" user-cache-directory)
        projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld" user-cache-directory))
  :config
  (projectile-mode)
  (setq projectile-completion-system 'ivy
        projectile-switch-project-action 'projectile-dired)

  (evil-leader/set-key
   "pp" 'projectile-switch-project
   "pf" 'projectile-find-file
   "pb" 'projectile-switch-to-buffer
   "pd" 'projectile-find-dir))

(use-package projectile-rails
  :ensure t
  :config
  (evil-leader/set-key
    "r RET" 'projectile-rails-goto-file-at-point
    "rc" 'projectile-rails-find-controller
    "rC" 'projectile-rails-find-current-controller
    "rm" 'projectile-rails-find-model
    "rM" 'projectile-rails-find-current-model
    "rv" 'projectile-rails-find-view
    "rV" 'projectile-rails-find-current-view
    "rh" 'projectile-rails-find-helper
    "rH" 'projectile-rails-find-current-helper))

(provide 'init-projectile)

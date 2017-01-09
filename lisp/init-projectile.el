(defconst projectile/projects-file
  (expand-file-name "projectile-bookmarks.eld" user-cache-directory))

(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ivy
        projectile-known-projects-file projectile/projects-file)

  :config
  (projectile-mode)

  (evil-leader/set-key
    "pp" 'projectile-switch-project
    "pf" 'projectile-find-file
    "pd" 'projectile-find-dir))

(provide 'init-projectile)

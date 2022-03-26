(use-package dired
  :straight (:type built-in)
  :hook ((dired-mode . hl-line-mode)
         (dired-mode . dired-hide-details-mode))
  :custom
  (dired-dwim-target t)
  (dired-auto-revert-buffer t)
  (dired-recursive-copies 'always)
  (dired-recursive-deletes 'always)
  (dired-hide-details-hide-symlink-targets nil)
  :config
  (when (executable-find "gls")
    (setq insert-directory-program "gls"))

  (when (or *is-a-linux* (executable-find "gls"))
    (setq dired-listing-switches "-alh --group-directories-first")))

(use-package diredfl
  :hook (dired-mode . diredfl-mode))

(provide 'init-dired)

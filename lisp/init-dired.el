(use-package dired
  :straight (:type built-in)
  :init
  (setq dired-dwim-target t
        dired-auto-revert-buffer t
        dired-hide-details-hide-symlink-targets nil
        dired-recursive-copies 'always
        dired-recursive-deletes 'always)
  :config
  (when (executable-find "gls")
    (setq dired-use-ls-dired t
          insert-directory-program "gls"
          dired-listing-switches "-alh --group-directories-first")))

(use-package dired-x
  :straight (:type built-in)
  :bind ("C-x C-j" . dired-jump))

(use-package diredfl
  :hook (dired-mode . diredfl-mode))

(provide 'init-dired)

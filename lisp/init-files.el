;; Backup
(setq auto-save-default nil
      create-lockfiles nil
      make-backup-files nil)

;; Dired
(use-package dired
  :straight (:type built-in)
  :config
  (setq dired-auto-revert-buffer t
        dired-dwim-target t
        dired-hide-details-hide-symlink-targets nil
        dired-recursive-copies 'always
        dired-recursive-deletes 'always
        insert-directory-program "gls"
        dired-listing-switches "-ahl -v --group-directories-first"))

(use-package dired-x
  :straight (:type built-in)
  :bind ("C-x C-j" . dired-jump))

(use-package diredfl
  :hook (dired-mode . diredfl-mode))

(provide 'init-files)

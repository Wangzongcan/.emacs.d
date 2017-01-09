(use-package dired+ :ensure t)

(use-package dired
  :defer t
  :config
  (use-package ls-lisp)

  (setq
   dired-dwim-target t
   ls-lisp-dirs-first t
   dired-auto-revert-buffer t
   dired-recursive-copies 'always
   ls-lisp-use-insert-directory-program nil
   dired-hide-details-hide-symlink-targets nil))

(provide 'init-dired)

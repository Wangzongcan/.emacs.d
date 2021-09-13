(use-package ls-lisp
  :straight (:type built-in)
  :demand t
  :custom
  (ls-lisp-dirs-first t)
  (ls-lisp-use-insert-directory-program nil))

(use-package dired
  :straight (:type built-in)
  :hook (dired-mode . hl-line-mode)
  :custom
  (dired-dwim-target t)
  (dired-auto-revert-buffer t)
  (dired-recursive-copies 'always)
  (dired-recursive-deletes 'always)
  (dired-hide-details-hide-symlink-targets nil))

(use-package dired-x
  :straight (:type built-in)
  :bind ("C-x C-j" . dired-jump))

(use-package diredfl
  :hook (dired-mode . diredfl-mode))

(provide 'init-dired)

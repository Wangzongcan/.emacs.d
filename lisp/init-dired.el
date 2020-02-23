(use-package dired
  :straight nil
  :hook (dired-mode . dired-hide-details-mode)
  :bind ("C-x C-j" . dired-jump)
  :config
  (setq dired-dwim-target t
        dired-recursive-copies 'always
        dired-recursive-deletes 'always))

(use-package ls-lisp
  :straight nil
  :demand
  :config
  (setq ls-lisp-dirs-first t
        ls-lisp-use-insert-directory-program nil))

(provide 'init-dired)

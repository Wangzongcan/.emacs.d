(use-package dired
  :init
  (add-hook 'dired-mode-hook 'dired-hide-details-mode)
  :config
  (setq dired-dwim-target t
        dired-auto-revert-buffer t
        dired-recursive-copies 'always))

(use-package dired-x)

(use-package ls-lisp
  :config
  (setq ls-lisp-dirs-first t
        ls-lisp-ignore-case t
        ls-lisp-use-insert-directory-program nil))

(provide 'init-dired)

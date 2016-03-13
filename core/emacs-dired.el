(use-package dired
  :config
  (setq dired-dwim-target t)
  
  (add-hook 'dired-mode-hook 'dired-hide-details-mode))

(use-package dired-x)

(use-package ls-lisp
  :config
  (setq ls-lisp-dirs-first t
        ls-lisp-ignore-case t
        ls-lisp-use-insert-directory-program nil))

(provide 'emacs-dired)

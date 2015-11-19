(use-package ls-lisp
  :init
  (setq ls-lisp-dirs-first t
        ls-lisp-ignore-case t
        dired-use-ls-dired nil
        ls-lisp-use-insert-directory-program nil))

(provide 'init-dired)

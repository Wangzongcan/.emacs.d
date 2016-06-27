(require 'dired)

(setq dired-dwim-target t
      dired-auto-revert-buffer t
      dired-recursive-copies 'always)

(add-hook 'dired-mode-hook 'dired-hide-details-mode)

(require 'dired-x)

(require 'ls-lisp)

(setq ls-lisp-dirs-first t
      ls-lisp-ignore-case t
      ls-lisp-use-insert-directory-program nil)

(provide 'init-dired)

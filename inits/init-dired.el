(require 'dired-x)

(add-hook 'dired-mode-hook 'my/dired-mode-hook)

(defun my/dired-mode-hook ()
  (require 'ls-lisp)
  
  (dired-hide-details-mode t)
  
  (setq dired-dwim-target t
        dired-auto-revert-buffer t
        dired-recursive-copies 'always
  
        ls-lisp-dirs-first t
        ls-lisp-ignore-case t
        ls-lisp-use-insert-directory-program nil))

(provide 'init-dired)

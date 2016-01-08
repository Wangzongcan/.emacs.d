(setq large-file-warning-threshold 100000000)

(defvar backup-directory (concat user-emacs-directory ".backup/"))
(if (not (file-exists-p backup-directory))
    (make-directory backup-directory t))

(setq
 make-backup-files t
 backup-directory-alist `((".*" . ,backup-directory))
 backup-by-copying t
 version-control t
 delete-old-versions t
 kept-old-versions 6
 kept-new-versions 9
 auto-save-default t
 auto-save-timeout 20
 auto-save-interval 200
 )

(setq
 dired-dwim-target t
 dired-recursive-copies 'always
 dired-recursive-deletes 'top
 dired-listing-switches "-lha"
 )

(add-hook 'dired-mode-hook 'auto-revert-mode)

(require 'dired-x)

(require 'ls-lisp)
(setq
 ls-lisp-dirs-first t
 ls-lisp-ignore-case t
 dired-use-ls-dired nil
 ls-lisp-use-insert-directory-program nil
 )

(recentf-mode)
(setq
 recentf-max-menu-items 30
 recentf-max-saved-items 5000
 )

(provide 'setup-files)

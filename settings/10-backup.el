(defvar backup-directory (expand-file-name ".backups" user-emacs-directory))
(if (not (file-exists-p backup-directory))
    (make-directory backup-directory t))

(setq create-lockfiles nil)

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

(provide '10-backup)

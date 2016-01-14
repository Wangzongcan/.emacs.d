(setq
 make-backup-files t
 backup-directory-alist `((".*" . ,backup-directory))
 backup-by-copying t
 version-control t
 delete-old-versions t
 kept-old-versions 6
 kept-new-versions 9)

(setq
 auto-save-default t
 auto-save-timeout 20
 auto-save-interval 200
 auto-save-list-file-prefix
 (concat backup-directory "auto-save-list/.saves-"))

(provide '10-backup)

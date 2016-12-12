(defconst user-cache-directory
  (file-name-as-directory (concat user-emacs-directory ".cache")))
(make-directory user-cache-directory t)

(defconst user-backup-directory
  (file-name-as-directory (concat user-cache-directory "backups")))
(make-directory user-backup-directory t)

(defconst user-auto-save-directory
  (file-name-as-directory (concat user-cache-directory "auto-save-list")))
(make-directory user-auto-save-directory t)

(provide 'init-variables)

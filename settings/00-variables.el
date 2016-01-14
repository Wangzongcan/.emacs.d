(defconst backup-directory
  (expand-file-name ".backup" user-emacs-directory))
(make-directory backup-directory t)

(defconst cache-directory
  (expand-file-name ".cache" user-emacs-directory))
(make-directory cache-directory t)

(provide '00-variables)

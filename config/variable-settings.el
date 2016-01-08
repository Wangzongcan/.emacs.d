(defconst cache-dir
  (file-name-as-directory (concat user-emacs-directory "cache")))
(make-directory cache-dir t)

(provide 'variable-settings)

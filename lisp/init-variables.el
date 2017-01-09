(defconst user-cache-directory
  (file-name-as-directory (concat user-emacs-directory ".cache")))
(make-directory user-cache-directory t)

(defconst default-gc-cons-threshold gc-cons-threshold)

(defconst custom-file-path (expand-file-name "custom.el" user-cache-directory))

(provide 'init-variables)

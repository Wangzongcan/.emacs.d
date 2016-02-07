(package-initialize)

(defconst emacs-settings-directory
  (concat user-emacs-directory "settings"))

(add-to-list 'load-path emacs-settings-directory)

(let ((setting-files (directory-files emacs-settings-directory t ".el$")))
  (dolist (file setting-files)
    (require (intern (file-name-base file)))))

(setq gc-cons-threshold most-positive-fixnum)

(setq package-enable-at-startup nil)

(defvar old-file-name-handler-alist file-name-handler-alist)
(setq-default file-name-handler-alist nil)
(defun reset-file-name-handler-alist ()
  (setq file-name-handler-alist old-file-name-handler-alist))
(add-hook 'emacs-startup-hook #'reset-file-name-handler-alist)

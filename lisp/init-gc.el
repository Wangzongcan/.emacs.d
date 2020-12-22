(defvar my-gc-cons-threshold 16777216)
(defvar default-file-name-handler-alist file-name-handler-alist)

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6
      file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist default-file-name-handler-alist)
            (setq gc-cons-percentage 0.1
                  gc-cons-threshold my-gc-cons-threshold)

            (defun my-minibuffer-setup-hook ()
              (setq gc-cons-threshold most-positive-fixnum))

            (defun my-minibuffer-exit-hook ()
              (setq gc-cons-threshold my-gc-cons-threshold))

            (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
            (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)))

(provide 'init-gc)

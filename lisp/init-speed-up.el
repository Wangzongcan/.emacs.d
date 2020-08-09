(defvar my-gc-cons-threshold 16777216)
(defvar default-file-name-handler-alist file-name-handler-alist)

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6
      file-name-handler-alist nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist default-file-name-handler-alist)

            (setq gc-cons-percentage 0.1
                  gc-cons-threshold my-gc-cons-threshold)))

(provide 'init-speed-up)

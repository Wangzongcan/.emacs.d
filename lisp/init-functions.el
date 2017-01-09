(defun set-max-gc-cons-threshold()
  (setq gc-cons-threshold (* 1024 1024 1024)))

(defun set-default-gc-cons-threshold()
  (setq gc-cons-threshold default-gc-cons-threshold))

(provide 'init-functions)

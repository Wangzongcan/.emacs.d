(defvar my/gc-cons-threshold 16777216)
(defvar my/gc-timer (run-with-idle-timer 10 t #'garbage-collect))

(setq gc-cons-percentage 0.6
      gc-cons-threshold most-positive-fixnum)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-percentage 0.1
                  gc-cons-threshold my/gc-cons-threshold)

            (if (boundp 'after-focus-change-function)
                (add-function :after after-focus-change-function
                  (lambda ()
                    (unless (frame-focus-state)
                      (garbage-collect))))
              (add-hook 'focus-out-hook 'garbage-collect))

            (defun my/minibuffer-setup-hook ()
              (setq gc-cons-threshold most-positive-fixnum))

            (defun my/minibuffer-exit-hook ()
              (setq gc-cons-threshold my/gc-cons-threshold))

            (add-hook 'minibuffer-setup-hook #'my/minibuffer-setup-hook)
            (add-hook 'minibuffer-exit-hook #'my/minibuffer-exit-hook)))

(provide 'init-gc)

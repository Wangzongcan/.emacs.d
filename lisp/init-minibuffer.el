(fset 'yes-or-no-p 'y-or-n-p)

(setq echo-keystrokes 0.01
      enable-recursive-minibuffers t)

(add-hook 'minibuffer-setup-hook
          (lambda ()
            (electric-pair-local-mode -1)
            (setq gc-cons-threshold most-positive-fixnum)))

(add-hook 'minibuffer-exit-hook
          (lambda () (setq gc-cons-threshold 104857600)))

(provide 'init-minibuffer)

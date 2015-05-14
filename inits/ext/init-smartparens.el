;; smartparens
(smartparens-global-mode t)
(show-smartparens-global-mode t)

(setq sp-ignore-modes-list '(minibuffer-inactive-mode
                             web-mode))

(dolist (mode '(lisp-mode emacs-lisp-mode lisp-interaction-mode))
  (sp-local-pair mode "'" nil :actions nil))

(provide 'init-smartparens)

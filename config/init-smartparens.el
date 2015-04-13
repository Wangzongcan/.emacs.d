(smartparens-global-mode t)
(show-smartparens-global-mode t)

(setq sp-ignore-modes-list '(minibuffer-inactive-mode
                             web-mode))

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(provide 'init-smartparens)

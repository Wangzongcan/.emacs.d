;; smartparens
(use-package smartparens
  :init
  (progn
    (smartparens-global-mode t))
  :config
  (progn
    (setq sp-ignore-modes-list '(minibuffer-inactive-mode
                                 web-mode))

    (dolist (mode '(lisp emacs-lisp lisp-interaction))
      (sp-local-pair (intern (concat (symbol-name mode) "-mode")) "'" nil :actions nil))))

(provide 'init-smartparens)

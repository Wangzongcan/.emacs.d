(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  (flycheck-add-mode 'javascript-eslint 'js-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-jsx-mode)

  (add-hook 'js2-mode-hook (lambda ()
                             (let ((local-eslint (flycheck-locate-config-file-ancestor-directories
                                                  "node_modules/.bin/eslint"
                                                  nil)))
                               (if (file-exists-p local-eslint)
                                   (setq-local flycheck-javascript-eslint-executable local-eslint))))))

(provide '30-flycheck)

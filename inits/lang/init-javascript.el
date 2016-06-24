(use-package nvm
  :ensure t
  :config
  (let* ((current-nvm-dir (car (cdar (nvm--installed-versions))))
         (nvm-path (format "%s/bin" current-nvm-dir)))
    (setenv "PATH" (concat nvm-path ":" (getenv "PATH")))
    (setq exec-path (append (list nvm-path) exec-path))))

(use-package js2-mode
  :ensure t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.es6\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter (("node" . js2-mode))
  :config
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  (setq js-indent-level 2
        js2-indent-level 2
        js2-basic-offset 2)
  (add-hook 'js2-mode-hook 'my/js2-mode-hook))


(use-package coffee-mode
  :ensure t
  :mode "\\.coffee\\'")

(use-package company-tern
  :ensure t
  :config
  (add-to-list 'company-backends 'company-tern))

(defun my/js2-mode-hook()
  (tern-mode)

  (let ((local-eslint (flycheck-locate-config-file-ancestor-directories
                       "node_modules/.bin/eslint"
                       nil)))
    (if (file-exists-p local-eslint)
        (setq-local flycheck-javascript-eslint-executable local-eslint))))

(provide 'init-javascript)

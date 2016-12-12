(use-package nvm
  :ensure t
  :config (nvm-use (caar (last (nvm--installed-versions)))))

(use-package coffee-mode :ensure t :mode "\\.coffee\\'")

(use-package js2-mode
  :ensure t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.es6\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter (("node" . js2-mode))
  :config
  (setq-default js2-indent-level 2)

  (setq js-indent-level 2
        js2-basic-offset 2
        js2-mode-show-parse-errors nil
        js2-mode-show-strict-warnings nil)

  (add-hook 'js2-mode-hook 'my/js2-mode-hook))

(defun my/js2-mode-hook()
  (let ((local-eslint (flycheck-locate-config-file-ancestor-directories
                       "node_modules/.bin/eslint" nil)))
    (if (file-exists-p local-eslint)
        (setq-local flycheck-javascript-eslint-executable local-eslint))))

(provide 'init-javascript)

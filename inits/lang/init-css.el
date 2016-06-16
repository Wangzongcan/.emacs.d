(use-package css-mode
  :init
  (add-hook 'css-mode-hook 'my/css-mode-hook)
  :config
  (setq css-indent-offset 2))

(use-package sass-mode
  :ensure t
  :mode (("\\.sass$" . sass-mode)))

(use-package scss-mode
  :ensure t
  :mode (("\\.scss$" . scss-mode))
  :config
  (setq scss-compile-at-save nil))

(defun my/css-mode-hook()
  (flycheck-mode -1))

(provide 'init-css)

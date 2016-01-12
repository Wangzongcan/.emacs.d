(use-package css-mode
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

(provide '50-css)

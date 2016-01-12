(use-package web-mode
  :ensure t
  :mode (("\\.html$" . web-mode)
         ("\\.erb$" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2))

(provide '50-web)

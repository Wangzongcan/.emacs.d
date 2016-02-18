(use-package web-mode
  :ensure t
  :mode (("\\.html$" . web-mode)
         ("\\.erb$" . web-mode))
  :config
  (setq web-mode-style-padding 2
        web-mode-css-indent-offset 2
        web-mode-markup-indent-offset 2
        web-mode-enable-auto-pairing t))

(provide '50-web)

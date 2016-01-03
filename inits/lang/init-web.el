(use-package web-mode
  :ensure t
  :mode (("\\.erb$" . web-mode)
         ("\\.html$" . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-indent-style 2
        web-mode-enable-auto-closing t
        web-mode-enable-auto-pairing t))

(provide 'init-web)

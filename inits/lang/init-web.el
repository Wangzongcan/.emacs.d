(use-package web-mode
  :ensure t
  :defer t
  :mode (("\\.erb$" . web-mode)
         ("\\.html$" . web-mode))
  :init
  (setq web-mode-html-offset 2
        web-mode-script-padding 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-enable-auto-closing t
        web-mode-enable-auto-pairing t
        web-mode-markup-indent-offset 2))

(provide 'init-web)

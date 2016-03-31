(use-package web-mode
  :ensure t
  :mode (("\\.html$" . web-mode)
         ("\\.erb$" . web-mode))
  :config
  (setq web-mode-style-padding 2
        web-mode-css-indent-offset 2
        web-mode-attr-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-markup-indent-offset 2
        web-mode-enable-auto-pairing t)

  (add-hook 'web-mode-hook 'my/web-mode-hook))

(defun my/web-mode-hook ()
  (indent-guide-mode)
  (rainbow-delimiters-mode))

(provide 'init-web)

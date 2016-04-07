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

(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'web-mode-hook 'emmet-mode))

(defun my/web-mode-hook ()
  (rainbow-delimiters-mode)
  (highlight-indentation-current-column-mode))

(provide 'init-web)

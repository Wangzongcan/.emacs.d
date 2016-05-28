(use-package web-mode
  :ensure t
  :mode (("\\.html$" . web-mode)
         ("\\.erb$" . web-mode))
  :config
  (setq web-mode-style-padding 2
        web-mode-css-indent-offset 2
        web-mode-html-offset 2
        web-mode-script-padding 2
        web-mode-attr-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-markup-indent-offset 2
        web-mode-enable-auto-pairing t)

  (add-hook 'web-mode-hook 'my/web-mode-hook))

(use-package emmet-mode
  :ensure t)

(use-package company-web-html
  :ensure company-web
  :config
  (add-to-list 'company-backends 'company-web-html)
  (add-to-list 'company-backends 'company-web-jade)
  (add-to-list 'company-backends 'company-web-slim))

(defun my/web-mode-hook ()
  (emmet-mode)
  (smartparens-mode -1))

(provide 'init-web)

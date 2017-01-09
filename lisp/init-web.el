(use-package emmet-mode :ensure t :defer t)

(use-package web-mode
  :ensure t
  :mode (("\\.html\\'" . web-mode)
         ("\\.erb\\'" . web-mode))
  :config
  (setq web-mode-style-padding 2
        web-mode-script-padding 2
        web-mode-css-indent-offset 2
        web-mode-attr-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-markup-indent-offset 2
        web-mode-enable-current-element-highlight t
        web-mode-enable-current-column-highlight t)

  (unless window-system
    (setq web-mode-enable-auto-pairing t
          web-mode-enable-auto-closing t
          web-mode-enable-auto-quoting t))

  (add-hook 'web-mode-hook 'my/web-mode-hook))

(defun my/web-mode-hook ()
  (emmet-mode)
  (smartparens-mode -1))

(provide 'init-web)

(require 'web-mode)

(setq web-mode-markup-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-indent-style 2
      web-mode-enable-auto-closing t
      web-mode-enable-auto-pairing t)

(add-to-list 'auto-mode-alist '("\\.\\(erb\\|html\\)$" . web-mode))

(provide 'web-settings)

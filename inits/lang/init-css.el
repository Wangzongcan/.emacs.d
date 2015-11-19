(use-package css-mode
  :defer t
  :mode ("\\.css$" . css-mode)
  :init
  (setq css-indent-offset 2))

(provide 'init-css)

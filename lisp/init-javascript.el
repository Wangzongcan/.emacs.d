(use-package js-mode
  :straight (:type built-in)
  :mode (("\\.js\\'" . js-mode)
         ("\\.jsx\\'" . js-jsx-mode))
  :interpreter "node"
  :custom
  (js-indent-level 2))

(use-package typescript-mode
  :mode ("\\.ts[x]\\'" . typescript-mode)
  :custom
  (typescript-indent-level 2))

(use-package json-mode
  :mode "\\.json\\'")

(provide 'init-javascript)

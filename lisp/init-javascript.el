(use-package js-mode
  :straight (:type built-in)
  :mode (("\\.js\\'" . js-mode)
         ("\\.jsx\\'" . js-jsx-mode))
  :interpreter "node"
  :custom
  (js-indent-level 2))

(use-package typescript-ts-mode
  :straight (:type built-in)
  :mode "\\.ts\\'")

(use-package tsx-ts-mode
  :straight (:type built-in)
  :mode "\\.tsx\\'")

(use-package json-mode
  :mode "\\.json\\'")

(provide 'init-javascript)

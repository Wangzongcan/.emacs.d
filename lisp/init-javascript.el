(use-package js-mode
  :ensure nil
  :mode (("\\.js\\'" . js-mode)
         ("\\.jsx\\'" . js-jsx-mode))
  :interpreter "node"
  :custom
  (js-indent-level 2))

(use-package typescript-ts-mode
  :ensure nil
  :mode "\\.ts\\'")

(use-package tsx-ts-mode
  :ensure nil
  :mode "\\.tsx\\'")

(use-package json-mode
  :mode "\\.json\\'")

(provide 'init-javascript)

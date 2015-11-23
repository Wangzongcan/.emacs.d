(use-package js2-mode
  :ensure t
  :defer t
  :mode (("\\.js$" . js2-mode)
         ("\\.es6$" . js2-mode)
         ("\\.jsx$" . js2-jsx-mode))
  :init
  (setq js-indent-level 2
        js2-indent-level 2
        js2-basic-offset 2))

(provide 'init-javascript)

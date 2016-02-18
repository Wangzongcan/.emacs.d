(use-package js2-mode
  :ensure t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter (("node" . js2-mode))
  :config
  (setq js2-indent-level 2
        js2-basic-offset 2))

(provide '50-javascript)

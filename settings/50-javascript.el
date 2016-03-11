(use-package tern
  :ensure t)

(use-package js2-mode
  :ensure t
  :mode (("\\.js\\'" . js2-mode)
         ("\\.es6\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter (("node" . js2-mode))
  :config
  (setq js-indent-level 2
        js2-indent-level 2
        js2-basic-offset 2)

  (add-hook 'js2-mode-hook (lambda () (tern-mode t))))

(provide '50-javascript)

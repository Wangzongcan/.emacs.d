(use-package scss-mode
  :ensure t
  :defer t
  :mode ("\\.scss$" . scss-mode)
  :init
  (setq scss-compile-at-save nil))

(provide 'init-scss)

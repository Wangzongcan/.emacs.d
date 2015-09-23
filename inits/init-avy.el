(use-package avy
  :defer t
  :init
  (avy-setup-default)
  :config
  (setq avy-style 'at-full
        avy-background t))

(provide 'init-avy)

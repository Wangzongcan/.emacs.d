(use-package smartparens-config
  :ensure smartparens
  :defer t
  :diminish smartparens-mode
  :init
  (show-smartparens-global-mode))

(use-package smartparens-ruby)

(provide 'init-smartparens)

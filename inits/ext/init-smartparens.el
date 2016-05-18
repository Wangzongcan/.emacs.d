(use-package smartparens-config
  :ensure smartparens
  :init (add-hook 'after-init-hook #'show-smartparens-global-mode))

(use-package smartparens-ruby)

(provide 'init-smartparens)

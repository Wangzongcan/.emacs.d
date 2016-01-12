(use-package smartparens-config
  :ensure smartparens
  :init
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)
  :config
  (add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode))

(provide '30-smartparens)

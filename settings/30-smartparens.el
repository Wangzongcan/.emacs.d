(use-package smartparens-config
  :ensure smartparens
  :init
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)
  :config
  (sp-with-modes '(web-mode)
    (sp-local-pair "<% "  " %>")
    (sp-local-pair "<%= " " %>")
    (sp-local-tag "%" "<% "  " %>")
    (sp-local-tag "=" "<%= " " %>"))

  (add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode))

(provide '30-smartparens)

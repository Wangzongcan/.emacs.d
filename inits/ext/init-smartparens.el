(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :init
  (require 'smartparens-config)

  (show-smartparens-global-mode t)
  (smartparens-global-mode t))

(provide 'init-smartparens)

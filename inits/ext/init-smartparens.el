(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :init
  (require 'smartparens-config)
  (show-smartparens-global-mode))

(use-package smartparens-ruby)

(provide 'init-smartparens)

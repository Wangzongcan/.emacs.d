(use-package emmet-mode
  :ensure t
  :defer t
  :config
  (add-hook 'web-mode-hook 'emmet-mode))

(provide 'init-emmet)

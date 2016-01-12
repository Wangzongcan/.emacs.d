(use-package emmet-mode
  :ensure t
  :config
  (add-hook 'web-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook 'emmet-mode)
  (add-hook 'sass-mode-hook 'emmet-mode)
  (add-hook 'scss-mode-hook 'emmet-mode))

(provide '60-emmet)

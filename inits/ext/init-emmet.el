(use-package emmet-mode
  :ensure t
  :defer t
  :init
  (add-hook 'web-mode-hook 'emmet-mode)
  (add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))))

(provide 'init-emmet)

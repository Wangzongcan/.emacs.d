(use-package diff-hl
  :ensure t
  :config
  (global-diff-hl-mode t)
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh))

(provide '30-diff-hl)

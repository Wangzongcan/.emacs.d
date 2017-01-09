(use-package whitespace
  :defer t
  :config
  (setq whitespace-style '(face empty tabs trailing))

  (add-hook 'before-save-hook 'delete-trailing-whitespace))

(provide 'init-whitespace)

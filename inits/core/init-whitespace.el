(use-package whitespace
  :diminish whitespace-mode
  :config
  (setq whitespace-style '(face tab-mark trailing empty))

  (add-hook 'before-save-hook 'whitespace-cleanup))

(provide 'init-whitespace)

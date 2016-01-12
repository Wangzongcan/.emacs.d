(use-package whitespace
  :config
  (setq whitespace-style '(face tab-mark trailing empty))
  (add-hook 'prog-mode-hook 'whitespace-mode))

(provide '10-whitespace)

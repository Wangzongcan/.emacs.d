(use-package whitespace
  :init
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :config
  (setq whitespace-style '(face tab-mark trailing empty)))

(provide 'init-whitespace)

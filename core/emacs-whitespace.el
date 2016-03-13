(use-package whitespace
  :config
  (setq whitespace-style '(face tab-mark trailing empty))

  (add-hook 'before-save-hook 'whitespace-cleanup))

(provide 'emacs-whitespace)

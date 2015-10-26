(use-package nlinum
  :init
  (setq nlinum-format "%4d \u2502  ")
  (add-hook 'prog-mode-hook 'nlinum-mode))

(provide 'init-nlinum)

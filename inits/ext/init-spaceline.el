(use-package spaceline-config
  :ensure spaceline
  :init
  (setq powerline-default-separator 'wave)
  :config
  (spaceline-spacemacs-theme)
  (spaceline-toggle-minor-modes-off)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

(provide 'init-spaceline)

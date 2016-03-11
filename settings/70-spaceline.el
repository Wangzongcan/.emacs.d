(use-package spaceline-config
  :config
  (setq powerline-default-separator nil)

  (spaceline-spacemacs-theme)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-flycheck-info-on)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

(provide '70-spaceline)

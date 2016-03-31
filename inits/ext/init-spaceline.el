(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-spacemacs-theme)
  (setq powerline-height 20
        powerline-default-separator 'slant
        spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

(provide 'init-spaceline)

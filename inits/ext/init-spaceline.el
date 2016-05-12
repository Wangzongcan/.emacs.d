(use-package spaceline-config
  :ensure spaceline
  :init
  (setq powerline-default-separator 'wave)
  :config
  (spaceline-spacemacs-theme)

  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

(provide 'init-spaceline)

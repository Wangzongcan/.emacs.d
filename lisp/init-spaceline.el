(use-package spaceline-config
  :ensure spaceline
  :config
  (setq ns-use-srgb-colorspace nil)

  (setq powerline-default-separator nil)

  (spaceline-spacemacs-theme)
  (spaceline-toggle-minor-modes-off)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state))

(provide 'init-spaceline)

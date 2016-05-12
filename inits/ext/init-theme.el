(use-package monokai-theme :ensure t :defer t)
(use-package spacemacs-theme :ensure t :defer t)
(use-package dracula-theme
  :ensure t
  :defer t
  :config
  (set-face-attribute 'font-lock-type-face nil :foreground "#8be9fd")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "#bd93f9"))
(use-package darkokai-theme
  :ensure t
  :defer t
  :init
  (setq darkokai-mode-line-padding 1))

(load-theme 'dracula t)
(provide 'init-theme)

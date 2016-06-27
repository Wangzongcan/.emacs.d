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
  :config
  (setq darkokai-mode-line-padding 1))
(use-package solarized-theme
  :ensure t
  :defer t
  :config
  (setq x-underline-at-descent-line t))
(use-package zenburn-theme :ensure t :defer t)

(load-theme 'spacemacs-dark t)

(provide 'init-themes)

(use-package monokai-theme :ensure t :defer t)
(use-package spacemacs-theme :ensure t :defer t)
(use-package darkokai-theme
  :ensure t
  :defer t
  :init
  (setq darkokai-mode-line-padding 1))

(load-theme 'darkokai t)
(provide 'init-theme)

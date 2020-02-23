(use-package undo-tree
  :diminish
  :hook (after-init . global-undo-tree-mode))

(use-package evil
  :defer 0.1
  :init
  (setq evil-want-keybinding nil
        evil-disable-insert-state-bindings t)
  :config
  (evil-mode))

(use-package evil-collection
  :after evil
  :init
  (evil-collection-init))

(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode))

(provide 'init-evil)

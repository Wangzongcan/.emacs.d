(use-package undo-tree
  :hook (after-init . global-undo-tree-mode))

(use-package evil
  :hook (after-init . evil-mode)
  :init
  (setq evil-want-keybinding nil
        evil-want-Y-yank-to-eol t
        evil-undo-system 'undo-tree
        evil-disable-insert-state-bindings t))

(use-package evil-collection
  :after evil
  :config (evil-collection-init))

(use-package evil-surround
  :after evil
  :config (global-evil-surround-mode))

(use-package evil-snipe
  :after evil
  :config (evil-snipe-override-mode))

(provide 'init-evil)

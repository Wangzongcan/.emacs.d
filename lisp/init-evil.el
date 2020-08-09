(use-package undo-tree
  :hook (after-init . global-undo-tree-mode))

(use-package evil
  :defer 0.2
  :init
  (setq evil-want-keybinding nil
        evil-disable-insert-state-bindings t
        evil-want-Y-yank-to-eol t)
  :config
  (evil-set-undo-system 'undo-tree)

  (evil-mode))

(use-package evil-collection
  :after evil
  :demand t
  :config
  (evil-collection-init))

(use-package evil-matchit
  :after evil
  :demand t
  :config
  (global-evil-matchit-mode))

(use-package evil-surround
  :after evil
  :demand t
  :config
  (global-evil-surround-mode))

(use-package evil-snipe
  :after evil
  :demand t
  :config
  (evil-snipe-override-mode))

(use-package evil-magit
  :after (evil magit)
  :demand t)

(provide 'init-evil)

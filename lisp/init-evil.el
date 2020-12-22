(use-package evil
  :hook (after-init . evil-mode)
  :custom
  (evil-want-keybinding nil)
  (evil-want-Y-yank-to-eol t)
  (evil-undo-system 'undo-redo)
  (evil-disable-insert-state-bindings t))

(use-package evil-collection
  :after evil
  :init (evil-collection-init))

(use-package evil-matchit
  :after evil
  :init (global-evil-matchit-mode))

(use-package evil-surround
  :after evil
  :init (global-evil-surround-mode))

(use-package evil-snipe
  :after evil
  :init (evil-snipe-override-mode))

(provide 'init-evil)

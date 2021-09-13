(use-package evil
  :defer 0.2
  :custom
  (evil-want-keybinding nil)
  (evil-want-Y-yank-to-eol t)
  (evil-undo-system 'undo-redo)
  :init
  (setq evil-disable-insert-state-bindings t)
  :config
  (evil-mode +1))

(use-package evil-collection
  :demand t
  :after evil
  :config (evil-collection-init))

(use-package evil-surround
  :demand t
  :after evil
  :config (global-evil-surround-mode))

(use-package evil-snipe
  :demand t
  :after evil
  :config (evil-snipe-override-mode))

(provide 'init-evil)

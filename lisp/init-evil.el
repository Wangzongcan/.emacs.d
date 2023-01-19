(use-package evil
  :hook (after-init . evil-mode)
  :custom
  (evil-want-keybinding nil)
  (evil-want-Y-yank-to-eol t)
  (evil-undo-system 'undo-redo)
  :init
  (setq evil-disable-insert-state-bindings t)
  :config
  (evil-set-leader nil (kbd "SPC"))

  (evil-define-key 'normal 'global
    (kbd "<leader>SPC") 'execute-extended-command
    (kbd "<leader>pp") 'project-switch-project
    (kbd "<leader>pd") 'project-find-dir
    (kbd "<leader>pf") 'project-find-file
    (kbd "<leader>pb") 'project-switch-to-buffer
    (kbd "<leader>psr") 'rg-project))

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

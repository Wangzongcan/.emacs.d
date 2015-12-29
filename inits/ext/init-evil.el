(use-package evil
  :ensure t
  :config
  (setcdr evil-insert-state-map nil)
  (bind-key [escape] 'evil-normal-state evil-insert-state-map)
  (bind-key (read-kbd-macro evil-toggle-key) 'evil-emacs-state evil-insert-state-map)

  (bind-key ";" 'evil-ex evil-motion-state-map)

  (bind-key "j" 'evil-next-visual-line evil-normal-state-map)
  (bind-key "k" 'evil-previous-visual-line evil-normal-state-map)

  (evil-mode 1))

(use-package evil-leader
  :ensure t
  :init
  (global-evil-leader-mode t)
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "0" 'delete-window
   "1" 'delete-other-windows
   "2" 'split-window-below
   "3" 'split-window-right
   "o" 'other-window

   "b" 'switch-to-buffer
   "k" 'kill-buffer

   "SPC" 'counsel-M-x
   "cy" 'counsel-yank-pop
   "ci" 'counsel-imenu

   "gs" 'magit-status

   "pp" 'projectile-switch-project
   "pf" 'projectile-find-file
   "pd" 'projectile-find-dir
   "pb" 'projectile-switch-to-buffer

   "ll" 'load-current-file))

(use-package undo-tree
  :ensure undo-tree
  :diminish undo-tree-mode)

(provide 'init-evil)

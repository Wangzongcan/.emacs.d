(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  (setcdr evil-insert-state-map nil)
  (bind-keys :map evil-insert-state-map
             ([escape] . evil-normal-state)
             ((read-kbd-macro evil-toggle-key) . evil-emacs-state))

  (bind-keys :map evil-normal-state-map
             (";" . evil-ex)
             ("j" . evil-next-visual-line)
             ("k" . evil-previous-visual-line)))

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode 1)

  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "0" 'delete-window
   "1" 'delete-other-windows
   "2" 'split-window-below
   "3" 'split-window-right
   "o" 'other-window
   "b" 'switch-to-buffer
   "k" 'kill-buffer))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))

(provide 'init-evil)

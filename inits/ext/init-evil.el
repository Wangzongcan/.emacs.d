(use-package evil
  :ensure t
  :config
  (setcdr evil-insert-state-map nil)
  (bind-key [escape] 'evil-normal-state evil-insert-state-map)
  (bind-key (read-kbd-macro evil-toggle-key) 'evil-emacs-state evil-insert-state-map)

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

    "SPC" 'counsel-M-x
    "y" 'counsel-yank-pop

    "pp" 'projectile-switch-project
    "pf" 'projectile-find-file

    "ll" 'load-current-file))

(provide 'init-evil)

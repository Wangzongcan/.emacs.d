(use-package evil
  :ensure t
  :config
  (setcdr evil-insert-state-map nil)
  (bind-key [escape] 'evil-normal-state evil-insert-state-map)
  (bind-key (read-kbd-macro evil-toggle-key) 'evil-emacs-state evil-insert-state-map)

  (bind-key "j" 'evil-next-visual-line evil-normal-state-map)
  (bind-key "k" 'evil-previous-visual-line evil-normal-state-map)

  (evil-mode 1))

(provide 'init-evil)

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
  :ensure evil-leader
  :defer t
  :init
  (global-evil-leader-mode t)
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "1" 'delete-other-windows
   "2" 'split-window-below
   "3" 'split-window-right

   "SPC" 'counsel-M-x
   "cg" 'counsel-git-grep

   "b" 'ivy-switch-buffer

   "ac" 'avy-goto-char
   "aw" 'avy-goto-word-0
   "al" 'avy-goto-line

   "pf" 'projectile-find-file
   "pF" 'projectile-find-file-in-known-projects
   "pp" 'projectile-switch-project
   "pb" 'projectile-switch-to-buffer
   "pB" 'projectile-ibuffer
   "pd" 'projectile-find-dir

   "ll" 'load-current-file
   ))

(provide 'init-evil)

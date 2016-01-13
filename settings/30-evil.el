(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  :config
  (setcdr evil-insert-state-map nil)
  (bind-key "ESC" 'evil-normal-state evil-insert-state-map)
  (bind-key (read-kbd-macro evil-toggle-key) 'evil-emacs-state)


  (bind-key ";" 'evil-ex evil-normal-state-map)
  (bind-key "j" 'evil-next-visual-line evil-normal-state-map)
  (bind-key "k" 'evil-previous-visual-line evil-normal-state-map))

(use-package evil-leader
  :ensure t
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key
   "0" 'delete-window
   "1" 'delete-other-windows
   "2" 'split-window-below
   "3" 'split-window-right
   "o" 'other-window
   "b" 'switch-to-buffer

   ;; Counsel
   "SPC" 'counsel-M-x
   "cy" 'counsel-yank-pop
   "ci" 'counsel-imenu
   "cg" 'counsel-git

   ;; Projectile
   "pp" 'projectile-switch-project
   "pf" 'projectile-find-file
   "pb" 'projectile-switch-to-buffer

   ;; Projectile Rails
   "r RET" 'projectile-rails-goto-file-at-point
   "rc" 'projectile-rails-find-controller
   "rC" 'projectile-rails-find-current-controller
   "rm" 'projectile-rails-find-model
   "rM" 'projectile-rails-find-current-model
   "rv" 'projectile-rails-find-view
   "rV" 'projectile-rails-find-current-view
   )

  (global-evil-leader-mode t)
  )

(provide '30-evil)

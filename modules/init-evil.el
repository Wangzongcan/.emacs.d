(use-package evil
  :ensure t
  :init
  (add-hook 'after-init-hook #'evil-mode)
  :config
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
  :init
  (add-hook 'after-init-hook #'global-evil-leader-mode)
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

   ;; Counsel
   "SPC" 'counsel-M-x
   "cy" 'counsel-yank-pop
   "ci" 'counsel-imenu
   "cgg" 'counsel-git-grep
   "ca" 'counsel-ag

   ;; Magit
   "gs" 'magit-status

   ;; Projectile
   "pp" 'projectile-switch-project
   "pf" 'projectile-find-file
   "pb" 'projectile-switch-to-buffer
   "pd" 'projectile-find-dir

   ;; Projectile Rails
   "r RET" 'projectile-rails-goto-file-at-point
   "rc" 'projectile-rails-find-controller
   "rC" 'projectile-rails-find-current-controller
   "rm" 'projectile-rails-find-model
   "rM" 'projectile-rails-find-current-model
   "rv" 'projectile-rails-find-view
   "rV" 'projectile-rails-find-current-view
   "rh" 'projectile-rails-find-helper
   "rH" 'projectile-rails-find-current-helper
   ))

(use-package evil-surround
  :ensure t
  :init
  (add-hook 'after-init-hook #'global-evil-surround-mode))

(provide 'init-evil)
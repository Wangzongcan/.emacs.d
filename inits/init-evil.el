;; Evil
(use-package evil
  :init
  (progn
    (evil-mode 1))
  :config
  (progn
    (setcdr evil-insert-state-map nil)

    (bind-key [escape] 'evil-normal-state evil-insert-state-map)
    (bind-key (read-kbd-macro evil-toggle-key) 'evil-emacs-state evil-insert-state-map)
    (bind-key ";" 'evil-ex evil-motion-state-map)

    ;; normal
    (bind-key "j" 'evil-next-visual-line evil-normal-state-map)
    (bind-key "k" 'evil-previous-visual-line evil-normal-state-map)

    ;; evil-ex-define-cmd
    (evil-ex-define-cmd "nu" 'toggle-linum)

    (evil-set-initial-state 'dired-mode 'emacs)
    (evil-set-initial-state 'ibuffer-mode 'emacs)
    (evil-set-initial-state 'magit-mode 'emacs)
    (evil-set-initial-state 'ag-mode 'emacs)
    (evil-set-initial-state 'eshell-mode 'emacs)
    (evil-set-initial-state 'quickrun/mode 'emacs)
    (evil-set-initial-state 'help-mode 'emacs)))

;; evil-leader
(use-package evil-leader
  :defer t
  :init
  (progn
    (global-evil-leader-mode t))
  :config
  (progn
    (evil-leader/set-leader "<SPC>")

    (evil-leader/set-key
     "0" 'delete-window
     "1" 'delete-other-windows
     "2" 'split-window-below
     "3" 'split-window-right
     "k" 'kill-buffer
     "o" 'other-window

     "b" 'ivy-switch-buffer

     "SPC" 'counsel-M-x

     "pf" 'projectile-find-file
     "pF" 'projectile-find-file-in-known-projects
     "pp" 'projectile-switch-project
     "pb" 'projectile-switch-to-buffer
     "pB" 'projectile-ibuffer
     "pa" 'projectile-ag
     "pd" 'projectile-find-dir

     ;; magit
     "gs" 'magit-status

     "rc" 'projectile-rails-find-controller
     "rC" 'projectile-rails-find-current-controller
     "rm" 'projectile-rails-find-model
     "rM" 'projectile-rails-find-current-model
     "rh" 'projectile-rails-find-helper
     "rH" 'projectile-rails-find-current-helper
     "rv" 'projectile-rails-find-view
     "rV" 'projectile-rails-find-current-view
     "rj" 'projectile-rails-find-javascript
     "rJ" 'projectile-rails-find-current-javascript
     "rs" 'projectile-rails-find-stylesheet
     "rS" 'projectile-rails-find-current-stylesheet
     "rt" 'projectile-rails-find-spec
     "rT" 'projectile-rails-find-current-spec
     "rg" 'projectile-rails-goto-file-at-point

     "ll" 'load-current-file)))

(provide 'init-evil)

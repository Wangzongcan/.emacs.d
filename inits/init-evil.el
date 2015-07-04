;; Evil
(evil-mode 1)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map
  (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

(setq evil-default-cursor t
      evil-emacs-state-cursor '(bar . 2))

(define-key evil-insert-state-map [escape] 'evil-normal-state)

(define-key evil-motion-state-map (kbd ";") 'evil-ex)

(evil-define-key 'normal global-mode (kbd "j") 'gj)
(evil-define-key 'normal global-mode (kbd "k") 'kj)

(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'ibuffer-mode 'emacs)
(evil-set-initial-state 'magit-mode 'emacs)
(evil-set-initial-state 'ag-mode 'emacs)
(evil-set-initial-state 'eshell-mode 'emacs)
(evil-set-initial-state 'quickrun/mode 'emacs)

; Set cursor colors depending on mode
(when (display-graphic-p)
  (setq evil-emacs-state-cursor '("red" box))
  (setq evil-normal-state-cursor '("green" box))
  (setq evil-visual-state-cursor '("orange" box))
  (setq evil-insert-state-cursor '("red" bar))
  (setq evil-replace-state-cursor '("red" bar))
  (setq evil-operator-state-cursor '("red" hollow))
)

;; evil-leader
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right
  "k" 'kill-buffer
  "o" 'other-window

  "<SPC>" 'helm-M-x
  "b"     'helm-buffers-list

  "pf" 'projectile-find-file
  "pp" 'projectile-switch-project
  "pb" 'projectile-switch-to-buffer
  "pB" 'projectile-ibuffer
  "pa" 'projectile-ag

  "gs" 'magit-status

  "rc"  'projectile-rails-find-controller
  "rC"  'projectile-rails-find-current-controller
  "rm"  'projectile-rails-find-model
  "rM"  'projectile-rails-find-current-model
  "rh"  'projectile-rails-find-helper
  "rH"  'projectile-rails-find-current-helper
  "rv"  'projectile-rails-find-view
  "rV"  'projectile-rails-find-current-view
  "rgf" 'projectile-rails-goto-file-at-point

  "ll" 'load-current-file)

;; evil-surround
(global-evil-surround-mode 1)

(provide 'init-evil)

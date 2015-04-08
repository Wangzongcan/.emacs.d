;; Evil Leader
(package-install 'evil-leader)

(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

;; base
(evil-leader/set-key
  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right
  "k" 'kill-buffer

  "<SPC>" 'helm-M-x
  "b"     'helm-buffers-list
  "hm"    'helm-imenu
  "ho"    'helm-occur

  "o" 'ace-window

  "ac" 'ace-jump-char-mode
  "aw" 'ace-jump-word-mode
  "al" 'ace-jump-line-mode

  "pf" 'projectile-find-file
  "pp" 'projectile-switch-project
  "pb" 'projectile-switch-to-buffer
  "pa" 'projectile-ag
  "pA" 'projectile-helm-ag

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

  "mt"  'helm-mt

  "ll" 'load-current-file
)

(provide 'init-evil-leader)

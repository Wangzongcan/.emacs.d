(require 'evil)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-insert-state-map (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

(define-key evil-motion-state-map ";" 'evil-ex)
(define-key evil-normal-state-map "j" 'evil-next-visual-line)
(define-key evil-normal-state-map "k" 'evil-previous-visual-line)

(evil-mode 1)

(require 'evil-leader)
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

 "ll" 'load-current-file)

(global-evil-leader-mode t)

(provide 'evil-settings)

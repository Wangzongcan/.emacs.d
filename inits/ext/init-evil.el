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
(evil-set-initial-state 'git-commit-mode 'emacs)
(evil-set-initial-state 'ag-mode 'emacs)
(evil-set-initial-state 'eshell-mode 'emacs)
(evil-set-initial-state 'quickrun/mode 'emacs)


(provide 'init-evil)

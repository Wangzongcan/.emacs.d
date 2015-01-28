;; Evil
(package-install 'evil)

(require 'evil)

(evil-mode 1)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map
  (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

(define-key evil-insert-state-map [escape] 'evil-normal-state)

;; evil define key
(evil-define-key 'normal global-mode (kbd "j") 'gj)
(evil-define-key 'normal global-mode (kbd "k") 'kj)

(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'ibuffer-mode 'emacs)
(evil-set-initial-state 'git-commit-mode 'emacs)
(evil-set-initial-state 'ag-mode 'emacs)
(evil-set-initial-state 'term-mode 'emacs)
(evil-set-initial-state 'eshell-mode 'emacs)

;; evil cursor
(setq evil-emacs-state-cursor '("red" box)
      evil-normal-state-cursor '("green" box)
      evil-visual-state-cursor '("orange" box)
      evil-insert-state-cursor '("firebrick" (bar . 2)))

(provide 'init-evil)

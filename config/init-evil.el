;; Evil
(package-install 'evil)

(require 'evil)
(evil-mode 1)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map
  (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

(define-key evil-insert-state-map[escape] 'evil-normal-state)

;; evil define key
(evil-define-key 'normal global-mode (kbd "j") 'gj)
(evil-define-key 'normal global-mode (kbd "k") 'kj)

;; evil cursor
(setq evil-emacs-state-cursor '("red" box))
(setq evil-normal-state-cursor '("green" box))
(setq evil-visual-state-cursor '("orange" box))

(provide 'init-evil)

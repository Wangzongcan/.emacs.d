;; evil
(evil-mode t)

(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map
  (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

(define-key evil-insert-state-map[escape] 'evil-normal-state)

(evil-define-key 'normal global-map (kbd "j") (kbd "gj"))
(evil-define-key 'normal global-map (kbd "k") (kbd "gk"))
(evil-define-key 'normal global-map (kbd "|") 'evil-window-vsplit)
(evil-define-key 'normal global-map (kbd "_") 'evil-window-split)

(evil-ex-define-cmd "q" 'kill-this-buffer)
(evil-ex-define-cmd "wq" 'save-and-kill-this-buffer)

(evil-set-initial-state 'dired-mode 'emacs)
(evil-set-initial-state 'ibuffer-mode 'emacs)
(evil-set-initial-state 'makey-key-mode 'emacs)
(evil-set-initial-state 'inf-ruby-mode 'emacs)

;; evil-leader

(global-evil-leader-mode)

(evil-leader/set-leader ",")

(evil-leader/set-key
  "c" 'ace-jump-char-mode
  "w" 'ace-jump-word-mode
  "l" 'ace-jump-line-mode)

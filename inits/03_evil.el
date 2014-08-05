(require 'evil)
(require 'evil-leader)

(eval-after-load "evil"
  '(progn
     (evil-mode t)

     (setcdr evil-insert-state-map nil)
     (define-key evil-insert-state-map
       (read-kbd-macro evil-toggle-key) 'evil-emacs-state)

     (define-key evil-insert-state-map[escape] 'evil-normal-state)

     (evil-define-key 'normal global-map (kbd "j") (kbd "gj"))
     (evil-define-key 'normal global-map (kbd "k") (kbd "gk"))
     (evil-define-key 'normal global-map (kbd "f") 'evil-ace-jump-char-mode)
     (evil-define-key 'normal global-map (kbd "<up>") 'evil-window-up)
     (evil-define-key 'normal global-map (kbd "<down>") 'evil-window-down)
     (evil-define-key 'normal global-map (kbd "<left>") 'evil-window-left)
     (evil-define-key 'normal global-map (kbd "<right>") 'evil-window-right)
     (evil-define-key 'normal global-map (kbd "|") 'evil-window-vsplit)
     (evil-define-key 'normal global-map (kbd "_") 'evil-window-split)

     (evil-ex-define-cmd "q" 'kill-this-buffer)
     (evil-ex-define-cmd "wq" 'save-and-kill-this-buffer)

     (evil-set-initial-state 'dired-mode 'emacs)
     (evil-set-initial-state 'ibuffer-mode 'emacs)
     (evil-set-initial-state 'makey-key-mode 'emacs)
     (evil-set-initial-state 'inf-ruby-mode 'emacs)

     (eval-after-load "evil-leader"
       '(progn
          (global-evil-leader-mode)

          (evil-leader/set-leader ",")))))

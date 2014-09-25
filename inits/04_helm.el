(require 'helm)
(require 'helm-config)
(require 'helm-command)
(require 'helm-swoop)

(helm-mode 1)

(setq enable-recursive-minibuffers t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x f") 'helm-projectile)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "M-i") 'helm-swoop)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)

;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows nil)

;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)

;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color nil)

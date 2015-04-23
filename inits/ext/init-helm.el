;; helm
(require 'helm-config)
(helm-mode 1)

(setq helm-split-window-in-side-p t
      helm-buffers-fuzzy-matching t
      helm-locate-fuzzy-match t
      helm-imenu-fuzzy-match t
      helm-M-x-fuzzy-match t)

(helm-autoresize-mode 1)

(global-set-key (kbd "M-i") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(provide 'init-helm)

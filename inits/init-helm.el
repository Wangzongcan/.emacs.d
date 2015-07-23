;; helm
(require 'helm)
(require 'helm-config)

(setq-default
 helm-display-header-line nil
 helm-autoresize-min-height 10
 helm-autoresize-max-height 35
 helm-split-window-in-side-p t
 helm-buffers-fuzzy-matching t
 helm-locate-fuzzy-match t
 helm-imenu-fuzzy-match t
 helm-M-x-fuzzy-match t)

(global-set-key (kbd "M-i") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(set-face-attribute 'helm-source-header nil :height 1.1)

(helm-autoresize-mode 1)
(helm-mode 1)

;; helm-gtags
(require 'helm-gtags)

(add-hook 'ruby-mode-hook 'helm-gtags-mode)

(setq helm-gtags-path-style 'relative
      helm-gtags-ignore-case t
      helm-gtags-auto-update t)

(define-key helm-gtags-mode-map (kbd "M-t") 'helm-gtags-find-tag)
(define-key helm-gtags-mode-map (kbd "M-r") 'helm-gtags-find-rtag)

(provide 'init-helm)

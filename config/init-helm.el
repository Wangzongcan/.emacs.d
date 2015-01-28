;; Helm
(package-install 'helm)

(require 'helm-config)
(helm-mode 1)

(setq helm-split-window-in-side-p t)

(helm-autoresize-mode 1)

(global-set-key (kbd "M-i") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(provide 'init-helm)

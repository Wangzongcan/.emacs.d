;; Helm
(package-install 'helm)

(require 'helm-config)
(helm-mode 1)

(helm-autoresize-mode 1)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(provide 'init-helm)

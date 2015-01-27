;; Helm
(package-install 'helm)

(require 'helm-config)
(helm-mode 1)

(helm-autoresize-mode 1)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "M-i") 'helm-imenu)

(provide 'init-helm)

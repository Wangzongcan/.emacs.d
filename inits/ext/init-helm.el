;; Helm
(require 'helm-config)
(helm-mode 1)

(setq helm-split-window-in-side-p t)

(helm-autoresize-mode 1)

(global-set-key (kbd "M-i") 'helm-imenu)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;; Helm-Ag
(setq helm-ag-base-command "ag --nogroup --ignore-case"
      helm-ag-command-option "--all-text"
      helm-ag-insert-at-point 'symbol)

;; Helm-Mt
(global-set-key (kbd "C-x t") 'helm-mt)

(require 'el-init)
(el-init-provide)

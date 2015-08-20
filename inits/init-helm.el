;; helm
(use-package helm
  :defer t
  :init
  (progn
    (setq-default
     helm-display-header-line nil
     helm-autoresize-min-height 10
     helm-autoresize-max-height 35
     helm-split-window-in-side-p t
     helm-buffers-fuzzy-matching t
     helm-locate-fuzzy-match t
     helm-imenu-fuzzy-match t
     helm-M-x-fuzzy-match t)

    (helm-mode 1))
  :bind
  (("C-x b" . helm-buffers-list)
   ("M-y" . helm-show-kill-ring))
  :config
  (progn
    (bind-key "<tab>" 'helm-execute-persistent-action helm-map)

    (set-face-attribute 'helm-source-header nil :height 1.1)
    (helm-autoresize-mode 1)))

;; helm-swoop
(use-package helm-swoop
  :defer t
  :bind ("M-i" . helm-swoop)
  :config
  (progn
    (bind-key "M-i" 'helm-swoop-from-isearch isearch-mode-map)

    (setq helm-multi-swoop-edit-save t
          helm-swoop-split-with-multiple-windows nil
          helm-swoop-split-direction 'split-window-vertically
          helm-swoop-speed-or-color nil
          helm-swoop-move-to-line-cycle t
          helm-swoop-use-line-number-face t)))


(provide 'init-helm)

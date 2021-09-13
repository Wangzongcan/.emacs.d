;; Tab
(setq-default tab-width 4
              indent-tabs-mode nil)

;; Indent
(use-package indent
  :straight (:type built-in)
  :custom
  (tab-always-indent 'complete))

;; Autorevert
(use-package autorevert
  :straight (:type built-in)
  :hook (after-init . global-auto-revert-mode)
  :custom
  (auto-revert-interval 0.1)
  (auto-revert-verbose nil)
  (global-auto-revert-non-file-buffers t))

;; Delete Selection
(use-package delsel
  :straight (:type built-in)
  :hook (after-init . delete-selection-mode))

;; Elec Pair
(use-package elec-pair
  :hook (after-init . electric-pair-mode))

;; Server
(use-package server
  :straight (:type built-in)
  :preface
  (defun my/server-start ()
    (unless (server-running-p)
      (server-start)))
  :commands server-running-p
  :hook (after-init . my/server-start))

;; Avy
(use-package avy)

;; Editorconfig
(use-package editorconfig
  :hook (after-init . editorconfig-mode))

;; Symbol Overlay
(use-package symbol-overlay
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-switch-forward)
         ("M-p" . symbol-overlay-switch-backward)
         ("M-I" . symbol-overlay-remove-all)))

;; Xclip
(use-package xclip
  :unless window-system
  :hook (after-init . xclip-mode))

;; Wgrep
(use-package wgrep)

(provide 'init-edit)

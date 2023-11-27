;; Tab
(setq-default tab-width 4
              indent-tabs-mode nil)

;; Final newline
(setq require-final-newline t)

;; Indent
(setq tab-always-indent 'complete)

;; Minibuffer
(setq echo-keystrokes 0.02
      enable-recursive-minibuffers t)

;; Do not allow the cursor in the minibuffer prompt
(setq minibuffer-prompt-properties
      '(read-only t cursor-intangible t face minibuffer-prompt))
(add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

;; Auto Save
(setq auto-save-default nil
      auto-save-list-file-prefix nil)

;;; Backup
(setq make-backup-files nil)

;;; Lockfiles
(setq create-lockfiles nil)

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

;; Rg.el
(use-package rg)

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
(use-package wgrep
  :custom
  (wgrep-auto-save-buffer t))

(provide 'init-editing)

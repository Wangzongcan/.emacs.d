;; TAB
(setq-default tab-width 4
              indent-tabs-mode nil)

;; Backup
(setq auto-save-default nil
      make-backup-files nil)

;; Lockfile
(setq create-lockfiles nil)

;; Uniquify
(use-package uniquify
  :straight (:type built-in)
  :custom
  (uniquify-buffer-name-style 'forward))

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

;; Server
(use-package server
  :straight (:type built-in)
  :if window-system
  :hook (after-init . server-mode))

;; Pair
(use-package elec-pair
  :straight (:type built-in)
  :hook (after-init . electric-pair-mode))

;; Avy
(use-package avy
  :bind (("C-:" . avy-goto-char)
         ("C-'" . avy-goto-char-2)
         ("M-g f" . avy-goto-line)
         ("M-g w" . avy-goto-word-1)
         ("M-g e" . avy-goto-word-0)))

;; Ace Window
(use-package ace-window
  :bind ("C-x o" . ace-window)
  :custom (aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

;; Symbol Overlay
(use-package symbol-overlay
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-switch-forward)
         ("M-p" . symbol-overlay-switch-backward)
         ("M-I" . symbol-overlay-remove-all)))

;; Grep
(use-package wgrep
  :custom
  (wgrep-auto-save-buffer t)
  (wgrep-change-readonly-file t))

(provide 'init-edit)

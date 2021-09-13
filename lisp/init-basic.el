;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Don't create lockfile
(setq create-lockfiles nil)

;; Don’t compact font caches during GC.
(setq inhibit-compacting-font-caches t)

;; Confirm
(fset 'yes-or-no-p 'y-or-n-p)

;; Startup
(use-package startup
  :straight (:type built-in)
  :custom
  (inhibit-startup-screen t)
  (initial-scratch-message nil)
  (initial-major-mode 'fundamental-mode)
  (auto-save-list-file-prefix nil))

;; Files
(use-package files
  :straight (:type built-in)
  :custom
  (auto-save-default nil)
  (make-backup-files nil)
  (require-final-newline t))

;; Savehist
(use-package savehist
  :straight (:type built-in)
  :hook (after-init . savehist-mode)
  :custom
  (history-length 1000)
  (savehist-autosave-interval 300))

;; Recentf
(use-package recentf
  :straight (:type built-in)
  :hook (after-init . recentf-mode))

;; GCMH
(use-package gcmh
  :hook (after-init . gcmh-mode)
  :custom
  (gcmh-idle-delay 5)
  (gcmh-high-cons-threshold 16777216))

;; No Littering
(use-package no-littering :demand t)

(provide 'init-basic)

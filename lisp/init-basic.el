;; GCMH
(use-package gcmh
  :hook (after-init . gcmh-mode)
  :init
  (setq gcmh-idle-delay 0.5
        gcmh-high-cons-threshold (* 16 1024 1024)))

(setq inhibit-startup-message t
      inhibit-startup-echo-area-message nil
      inhibit-default-init t
      initial-major-mode 'fundamental-mode
      initial-scratch-message nil)

;; Native comp
(setq native-comp-async-report-warnings-errors nil)

;; Minibuffer
(setq echo-keystrokes 0.02
      enable-recursive-minibuffers t)

;; Confirm
(fset 'yes-or-no-p 'y-or-n-p)

;; TAB
(setq-default tab-width 4
              indent-tabs-mode nil)

;; Final newline
(setq require-final-newline t)

;; Backup
(setq auto-save-default nil
      make-backup-files nil)

;; Don't create auto-save-list directory
(setq auto-save-list-file-prefix nil)

;; Don't create lockfile
(setq create-lockfiles nil)

(provide 'init-basic)

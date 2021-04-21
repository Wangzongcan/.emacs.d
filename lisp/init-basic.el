(setq load-prefer-newer t)

;; Native comp
(setq native-comp-async-report-warnings-errors nil)

;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; Minibuffer
(setq echo-keystrokes 0.02
      enable-recursive-minibuffers t)

;; Do not allow the cursor in the minibuffer prompt
(setq minibuffer-prompt-properties
      '(read-only t cursor-intangible t face minibuffer-prompt))
(add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

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

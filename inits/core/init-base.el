;; Encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")

(if (boundp 'buffer-file-coding-system)
    (setq-default buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8))

(setq locale-coding-system 'utf-8)

;; Dir
(defconst emacs-backup-dir (concat user-emacs-directory "backups/"))
(unless (file-directory-p emacs-backup-dir)
  (make-directory emacs-backup-dir t))

;; Global Modes
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(transient-mark-mode t)
(global-font-lock-mode t)
(global-whitespace-mode t)
(global-auto-revert-mode t)

(electric-indent-mode)

;; General Settings
(setq
 inhibit-startup-message t
 initial-scratch-message nil

 visible-bell nil
 ring-bell-function #'ignore

 default-major-mode 'text-mode         ;; use text mode per default

 global-auto-revert-non-file-buffers t
 auto-revert-verbose nil

 backup-by-copying t                   ;; backup
 backup-directory-alist `(("." . ,emacs-backup-dir))
 delete-old-versions t
 kept-new-versions 9
 kept-old-versions 6
 version-control t
 auto-save-default t
 auto-save-interval 128
 auto-save-timeout 60
 delete-auto-save-files t
 delete-by-moving-to-trash nil
 auto-save-file-name-transforms `((".*" ,emacs-backup-dir))
 auto-save-list-file-prefix (concat emacs-backup-dir ".auto-saves-")

 kill-ring-max 5000                     ;truncate kill ring after 5000 entries
 mark-ring-max 5000                     ;truncate mark ring after 5000 entries
 recentf-max-saved-items 5000           ;same up to 5000 recent files

 font-lock-maximum-decoration t

 tab-always-indent 'complete

 default-truncate-lines t
 whitespace-style'
 '(face tabs empty trailing indendation space-after-tab space-before-tab)

 scroll-step 1
 scroll-conservatively 10000

 require-final-newline t               ;; auto add newline at the end of file

 line-number-mode t                    ;; show line number
 column-number-mode t                  ;; show column number

 echo-keystrokes 0.1                   ;; minibuffer
 enable-recursive-minibuffers t
 minibuffer-prompt-properties
 '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)

 confirm-nonexistent-file-or-buffer nil ;don't ask to create a buffer

 ad-redefinition-action 'accept
 )

;; Default Settings
(setq-default indent-tabs-mode nil                   ;use spaces instead of tabs
              default-tab-width 2)

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-base)

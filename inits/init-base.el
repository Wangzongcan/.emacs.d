;; Global Modes

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(blink-cursor-mode -1)

(transient-mark-mode t)
(global-whitespace-mode t)
(global-auto-revert-mode t)

(electric-indent-mode)

(show-paren-mode t)

;; General Settings
(setq
 inhibit-startup-message t
 initial-scratch-message nil

 visible-bell nil
 ring-bell-function #'ignore

 major-mode 'text-mode         ;; use text mode per default

 global-auto-revert-non-file-buffers t
 auto-revert-verbose nil

 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil          ;; 当编辑文件时会创建一个 .#filename 的文件，取消这个设置

 kill-ring-max 5000                     ;truncate kill ring after 5000 entries
 mark-ring-max 5000                     ;truncate mark ring after 5000 entries

 font-lock-maximum-decoration t

 tab-always-indent 'complete

 truncate-lines t
 whitespace-style
 '(face tabs empty trailing indendation space-after-tab space-before-tab)

 require-final-newline t               ;; auto add newline at the end of file

 scroll-step 1
 scroll-margin 5
 scroll-conservatively 10000
 auto-window-vscroll nil

 echo-keystrokes 0.1                   ;; minibuffer
 enable-recursive-minibuffers t
 minibuffer-prompt-properties
 '(read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)

 confirm-nonexistent-file-or-buffer nil ;don't ask to create a buffer

 ;; ad-redefinition-action 'accept
 gc-cons-threshold 100000000
 )

;; Default Settings
(setq-default indent-tabs-mode nil                   ;use spaces instead of tabs
              default-tab-width 2)

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-base)

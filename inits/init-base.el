;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

;; osx
(when (string-equal system-type "darwin")
  (setq mac-command-modifier 'super
        mac-option-modifier 'meta))

;; Global Modes
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(blink-cursor-mode -1)
(show-paren-mode t)
(global-whitespace-mode t)
(global-auto-revert-mode t)
(global-whitespace-mode -1)

;; General Settings
(setq
 inhibit-startup-message t
 initial-scratch-message nil
 initial-major-mode 'text-mode

 use-dialog-box nil
 use-file-dialog nil

 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil          ;; 当编辑文件时会创建一个 .#filename 的文件，取消这个设置

 tab-always-indent 'complete

 scroll-step 1
 scroll-margin 5

 echo-keystrokes 0.1                   ;; minibuffer
 enable-recursive-minibuffers t
 line-number-mode t
 column-number-mode t

 confirm-nonexistent-file-or-buffer nil ;don't ask to create a buffer
 )

(setq-default
 indent-tabs-mode nil                   ;use spaces instead of tabs
 default-tab-width 2
 show-trailing-whitespace t
 )

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; font
(set-frame-font "M+ 1m-12" nil t)

(provide 'init-base)

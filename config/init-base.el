;; Encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;; General Settings
(setq
 inhibit-startup-message t
 initial-scratch-message ""
 visible-bell t
 ring-bell-function #'ignore
 backup-directory-alist `((".*" . ,temporary-file-directory)) ;don't clutter my fs and put backups into tmp
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
 require-final-newline t                ;auto add newline at the end of file
 column-number-mode t                   ;show the column number
 default-major-mode 'text-mode          ;use text mode per default
 mouse-yank-at-point t                  ;middle click with the mouse yanks at point
 history-length 250                     ;default is 30
 locale-coding-system 'utf-8            ;utf-8 is default
 tab-always-indent 'complete            ;try to complete before identing
 confirm-nonexistent-file-or-buffer nil ;don't ask to create a buffer
 vc-follow-symlinks t                   ;follow symlinks automatically
 recentf-max-saved-items 5000           ;same up to 5000 recent files
 eval-expression-print-length nil       ;do not truncate printed expressions
 eval-expression-print-level nil        ;print nested expressions
 send-mail-function 'sendmail-send-it
 kill-ring-max 5000                     ;truncate kill ring after 5000 entries
 mark-ring-max 5000                     ;truncate mark ring after 5000 entries
 mouse-wheel-scroll-amount '(1 ((shift) . 5) ((control))) ;make mouse scrolling smooth
 indicate-buffer-boundaries 'left       ;fringe markers
 split-height-threshold 110             ;more readily split horziontally
 enable-recursive-minibuffers t
 custom-unlispify-menu-entries nil      ;M-x customize should not cripple menu entries
 custom-unlispify-tag-names nil         ;M-x customize should not cripple tags
 show-paren-delay 0
 default-truncate-lines t
 echo-keystrokes 0.1
 whitespace-style '(face tabs empty trailing indendation space-after-tab space-before-tab)
 scroll-step 1
 scroll-conservatively 10000
 auto-window-vscroll nil
 )

;; Default Settings
(setq-default
 tab-width 4
 indent-tabs-mode nil                   ;use spaces instead of tabs
 c-basic-offset 4                       ;"tab" with in c-related modes
 c-hungry-delete-key t                  ;delete more than one space
 indicate-empty-lines t
 )

;; Global Modes
(global-auto-revert-mode 1)  ;auto revert buffers when changed on disk
(show-paren-mode t)          ;visualize()
(blink-cursor-mode -1)       ;no cursor blinking
(tool-bar-mode -1)           ;disable the awful toolbar
(menu-bar-mode -1)            ;no menu, you can toggle it with C-c m
(scroll-bar-mode -1)         ;disable the sroll bar
(global-font-lock-mode t)
(transient-mark-mode t)
(global-whitespace-mode 1)

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

(when window-system
  (require 'server)
  (unless (server-running-p)
    (server-start)))

(provide 'init-base)

(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(setq ring-bell-function 'ignore)
(setq inhibit-startup-echo-area-message "guerry")

(setq visible-bell t)

(setq-default indicate-empty-lines t)

(setq frame-title-format
      (list "%b@Emacs " emacs-version))

(setq default-frame-alist
      '((horizontal-scroll-bars . nil)
        (vertical-scroll-bars . nil)
        (menu-bar-lines . 0)
        (tool-bar-lines . 0)))

(if (featurep 'menu-bar) (menu-bar-mode -1))
(if (featurep 'tool-bar) (tool-bar-mode -1))

(blink-cursor-mode -1)
(mouse-avoidance-mode 'animate)

(global-font-lock-mode t)
(font-lock-fontify-buffer)
(setq font-lock-verbose t)
(setq font-lock-maximum-decoration t)

(setq-default indent-tabs-mode nil tab-width 4)

(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)

(setq scroll-margin 5)
(setq scroll-conservatively 10240)

(setq echo-keystrokes 0.1)
(fset 'yes-or-no-p 'y-or-n-p)

(line-number-mode t)
(column-number-mode t)
(setq size-indication-mode t)

(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

(setq auto-save-default nil)
(setq make-backup-files nil)

(setq kill-ring-max 1024)
(setq mark-ring-max 1024)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(require 'server)
(unless (server-running-p)
  (server-start))

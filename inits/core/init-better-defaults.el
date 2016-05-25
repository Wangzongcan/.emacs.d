;;; Code:
(setq gc-cons-threshold 20000000)

(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")

(setq ns-use-srgb-colorspace nil)

(setq frame-resize-pixelwise t)

(setq inhibit-startup-screen t
      initial-scratch-message "")

(setq visible-bell t
      ring-bell-function #'ignore)

(setq-default truncate-lines t)

(setq tab-always-indent 'complete)
(setq-default indent-tabs-mode nil)

(setq scroll-margin 5
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(fset 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil)

(setq auto-save-default nil
      auto-save-list-file-name nil
      auto-save-list-file-prefix nil)

;; Turn On
(delete-selection-mode 1)

;; Turn Off
(when (featurep 'tool-bar) (tool-bar-mode -1))
(when (featurep 'tool-bar) (menu-bar-mode -1))
(when (featurep 'tool-bar) (scroll-bar-mode -1))
(blink-cursor-mode -1)

(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

(provide 'init-better-defaults)

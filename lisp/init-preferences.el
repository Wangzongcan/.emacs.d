(setq create-lockfiles nil)

(setq-default truncate-lines t)

;; indent
(setq-default tab-width 4
              indent-tabs-mode nil)

;; scroll
(setq scroll-step 1
      scroll-margin 1
      scroll-conservatively 100000)

(when (display-graphic-p)
  (tooltip-mode -1)

  (setq ring-bell-function #'ignore)
  (setq x-underline-at-descent-line t))

(use-package simple
  :straight nil
  :config
  (column-number-mode))

;; autorevert
(use-package autorevert
  :straight nil
  :hook (after-init . global-auto-revert-mode)
  :config
  (setq auto-revert-interval 0.1
        auto-revert-verbose nil
        global-auto-revert-non-file-buffers t))

(use-package frame
  :straight nil
  :config
  (blink-cursor-mode -1))

;; files
(use-package files
  :straight nil
  :config
  (setq auto-save-default nil
        make-backup-files nil
        require-final-newline t))

;; uniquify
(use-package uniquify
  :straight nil
  :config
  (setq uniquify-buffer-name-style 'forward))

;; server
(use-package server
  :straight nil
  :if window-system
  :hook (after-init . server-start))

(provide 'init-preferences)

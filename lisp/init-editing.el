;; Format
(setq require-final-newline t)

(setq-default tab-width 4
              indent-tabs-mode nil)

;; Autorevert
(use-package autorevert
  :straight (:type built-in)
  :hook (after-init . global-auto-revert-mode)
  :config
  (setq auto-revert-interval 0.1
        auto-revert-verbose nil
        global-auto-revert-non-file-buffers t))

;; Delete selection
(use-package delsel
  :straight (:type built-in)
  :hook (after-init . delete-selection-mode))

;; Server
(use-package server
  :straight (:type built-in)
  :if window-system
  :hook (after-init . server-mode))

;; Grep
(use-package wgrep
  :init
  (setq wgrep-auto-save-buffer t
        wgrep-change-readonly-file t))

(provide 'init-editing)

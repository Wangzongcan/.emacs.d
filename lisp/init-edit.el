;; Autorevert
(use-package autorevert
  :straight (:type built-in)
  :hook (after-init . global-auto-revert-mode)
  :init
  (setq auto-revert-interval 0.1
        auto-revert-verbose nil
        global-auto-revert-non-file-buffers t))

;; Delete Selection
(use-package delsel
  :straight (:type built-in)
  :hook (after-init . delete-selection-mode))

;; Pair
(use-package elec-pair
  :straight (:type built-in)
  :hook (after-init . electric-pair-mode))

(use-package server
  :straight (:type built-in)
  :config
  (add-hook 'after-init-hook
            (lambda ()
              (unless (server-running-p)
                (server-start)))))

;; Symbol Overlay
(use-package symbol-overlay
  :hook (prog-mode . symbol-overlay-mode)
  :bind (("M-i" . symbol-overlay-put)
         ("M-n" . symbol-overlay-switch-forward)
         ("M-p" . symbol-overlay-switch-backward)
         ("M-I" . symbol-overlay-remove-all)))

;; Grep
(use-package wgrep
  :init
  (setq wgrep-auto-save-buffer t
        wgrep-change-readonly-file t))

;; xclip
(use-package xclip
  :hook (after-init . xclip-mode))

(provide 'init-edit)

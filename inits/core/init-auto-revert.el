(use-package autorevert
  :init (add-hook 'after-init-hook #'global-auto-revert-mode)
  :config
  (setq auto-revert-verbose nil
        global-auto-revert-non-file-buffers t))

(provide 'init-auto-revert)

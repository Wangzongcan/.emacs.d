(use-package magit
  :ensure t
  :commands (magit-status magit-blame magit-mode)
  :init
  (fullframe magit-status magit-mod-quit-window)

  (setq magit-push-always-verify nil))

(provide '30-magit)

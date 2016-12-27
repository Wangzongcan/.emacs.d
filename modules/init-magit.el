(use-package magit
  :ensure t
  :defer t
  :config
  (fullframe magit-status magit-mode-quit-window)

  (evil-leader/set-key
   "gs" 'magit-status))

(provide 'init-magit)

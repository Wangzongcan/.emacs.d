(use-package recentf
  :config
  (setq recentf-max-saved-items 128
        recentf-max-menu-items 12
        recentf-save-file
        (expand-file-name "recentf" emacs-cache-directory))

  (recentf-mode 1))

(provide 'emacs-recentf)

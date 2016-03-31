(use-package recentf
  :init
  (setq recentf-save-file
        (expand-file-name "recentf" emacs-savefile-directory))
  :config
  (recentf-mode 1))

(provide 'init-recentf)

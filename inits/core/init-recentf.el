(use-package recentf
  :init
  (add-hook 'after-init-hook #'recentf-mode)
  (setq recentf-save-file
        (expand-file-name "recentf" my/cache-directory)))

(provide 'init-recentf)

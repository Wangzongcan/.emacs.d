(use-package magit
  :bind ("C-x g" . magit-status))

(use-package diff-hl
  :hook ((after-init . global-diff-hl-mode)
         (after-init . diff-hl-flydiff-mode))
  :init (setq diff-hl-draw-borders nil)
  :config
  (setq-default fringes-outside-margins t)

  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))

  ;; Integration with magit
  (with-eval-after-load 'magit
    (add-hook 'magit-pre-refresh-hook #'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh)))

  (provide 'init-version-control)

;; Magit
(use-package magit
  :general
  (my-leader-def 'normal 'override
    "gs" 'magit-status))

;; Git Modes
(use-package git-modes)

;; Git Timemachine
(use-package git-timemachine)

;; Diff Hl
(use-package diff-hl
  :hook ((after-init . global-diff-hl-mode)
         (diff-hl-mode . diff-hl-flydiff-mode)
         (dired-mode . diff-hl-dired-mode))
  :custom
  (diff-hl-draw-borders nil)
  :config
  (unless (display-graphic-p)
    (diff-hl-margin-mode 1)))

(provide 'init-git)

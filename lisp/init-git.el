;; Magit
(use-package magit)

;; Magit TODO
(use-package magit-todos
  :hook (magit-mode . magit-todos-mode))

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
  :custom-face
  (diff-hl-change ((t (:foreground ,(face-background 'highlight) :background nil))))
  (diff-hl-insert ((t (:background nil))))
  (diff-hl-delete ((t (:background nil))))
  :config
  (defun my/diff-hl-fringe-bmp-function (_type _pos)
    "Fringe bitmap function for use as `diff-hl-fringe-bmp-function'."
    (define-fringe-bitmap 'my-diff-hl-bmp [224] 1 8 '(center t)))
  (setq diff-hl-fringe-bmp-function #'my/diff-hl-fringe-bmp-function)

  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))

  ;; Integration with magit
  (with-eval-after-load 'magit
    (add-hook 'magit-pre-refresh-hook #'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh)))

(provide 'init-git)

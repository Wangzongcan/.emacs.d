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
  (diff-hl-change ((t (:background unspecified :foreground "DarkOrange"))))
  (diff-hl-insert ((t (:background unspecified :foreground "LightGreen"))))
  (diff-hl-delete ((t (:background unspecified :foreground "Red"))))
  :config
  (let* ((width 2)
         (bitmap (vector (1- (expt 2 width)))))
    (define-fringe-bitmap 'my:diff-hl-bitmap bitmap 1 width '(top t)))
  (setq diff-hl-fringe-bmp-function (lambda (type pos) 'my:diff-hl-bitmap))

  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))

  ;; Integration with magit
  (with-eval-after-load 'magit
    (add-hook 'magit-pre-refresh-hook #'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh)))

(provide 'init-git)

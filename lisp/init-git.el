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
  (diff-hl-change ((t (:foreground ,(face-background 'highlight) :background unspecified))))
  (diff-hl-insert ((t (:background unspecified))))
  (diff-hl-delete ((t (:background unspecified))))
  :config
  (let* ((height (frame-char-height))
         (width 2)
         (ones (1- (expt 2 width)))
         (bits (make-vector height ones)))
    (define-fringe-bitmap 'my-diff-hl-bitmap bits height width))
  (setq diff-hl-fringe-bmp-function (lambda (type pos) 'my-diff-hl-bitmap))

  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))

  ;; Integration with magit
  (with-eval-after-load 'magit
    (add-hook 'magit-pre-refresh-hook #'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh)))

(provide 'init-git)

(use-package magit
  :bind ("C-x g" . magit-status))

(use-package diff-hl
  :custom-face
  (diff-hl-change ((t (:foreground ,(face-background 'highlight) :background nil))))
  (diff-hl-insert ((t (:background nil))))
  (diff-hl-delete ((t (:background nil))))
  :hook ((after-init . global-diff-hl-mode)
         (after-init . diff-hl-flydiff-mode))
  :init (setq diff-hl-draw-borders nil)
  :config
  (defun my-diff-hl-fringe-bmp-function (_type _pos)
    "Fringe bitmap function for use as `diff-hl-fringe-bmp-function'."
    (define-fringe-bitmap 'my-diff-hl-bmp [224] 1 8 '(center t)))
  (setq diff-hl-fringe-bmp-function #'my-diff-hl-fringe-bmp-function)

  (unless (display-graphic-p)
    (diff-hl-margin-mode 1))

  ;; Integration with magit
  (with-eval-after-load 'magit
    (add-hook 'magit-pre-refresh-hook #'diff-hl-magit-pre-refresh)
    (add-hook 'magit-post-refresh-hook #'diff-hl-magit-post-refresh)))

(provide 'init-git)

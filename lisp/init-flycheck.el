(use-package flycheck
  :custom
  (flycheck-emacs-lisp-load-path 'inherit)
  (flycheck-check-syntax-automatically '(save mode-enabled))
  (flycheck-indication-mode (if (display-graphic-p) 'right-fringe 'right-margin))
  :config
  (when (fboundp 'define-fringe-bitmap)
    (define-fringe-bitmap 'flycheck-fringe-bitmap-arrow
      [16 48 112 240 112 48 16] nil nil 'center))
  (flycheck-redefine-standard-error-levels "⏴" 'flycheck-fringe-bitmap-arrow))

(provide 'init-flycheck)

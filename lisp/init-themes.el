;; Themes
(use-package modus-themes
  :custom
  (modus-themes-bold-constructs t)
  (modus-themes-italic-constructs t)

  (modus-themes-common-palette-overrides
   '((fringe unspecified)
     (bg-line-number-inactive unspecified)
     (bg-line-number-active unspecified)
     (border-mode-line-active unspecified)
     (border-mode-line-inactive unspecified))))

(provide 'init-themes)

;; Themes
(use-package doom-themes)
(use-package dracula-theme)
(use-package modus-themes
  :custom
  (modus-themes-bold-constructs t)
  (modus-themes-italic-constructs t)

  (modus-themes-common-palette-overrides
   '((fringe unspecified)
     (border-mode-line-active unspecified)
     (border-mode-line-inactive unspecified))))

(provide 'init-themes)

;; Themes
(use-package doom-themes)
(use-package dracula-theme)
(use-package modus-themes
  :custom
  (modus-themes-region '(bg-only))
  (modus-themes-bold-constructs t)
  (modus-themes-italic-constructs t)
  (modus-themes-subtle-line-numbers t)
  (modus-themes-mode-line '(borderless))
  (modus-themes-syntax '(alt-syntax green-strings yellow-comments)))

(provide 'init-themes)

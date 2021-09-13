;; Themes
(use-package doom-themes)
(use-package dracula-theme)
(use-package modus-themes
  :custom
  (modus-themes-deuteranopia t)
  (modus-themes-bold-constructs t)
  (modus-themes-italic-constructs t)
  (modus-themes-subtle-line-numbers t)

  (modus-themes-diffs 'fg-only-deuteranopia)
  (modus-themes-region '(bg-only no-extend))
  (modus-themes-mode-line '(borderless))
  (modus-themes-paren-match '(bold intense))
  (modus-themes-completions '(opinionated))
  (modus-themes-syntax '(alt-syntax yellow-comments green-strings))
  :init
  (modus-themes-load-themes))

(provide 'init-themes)

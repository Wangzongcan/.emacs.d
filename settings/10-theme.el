(use-package monokai-theme
  :ensure t
  :init
  (load-theme 'monokai t)

  (set-face-attribute 'default nil :background "black")
  (set-face-attribute 'fringe nil :background "black"))

(provide '10-theme)

;; Theme

(use-package base16-theme
 :init
 (load-theme 'base16-oceanicnext-dark t)
 (set-face-attribute 'fringe nil
                     :foreground (face-foreground 'default)
                     :background (face-background 'default)))

(provide 'init-theme)

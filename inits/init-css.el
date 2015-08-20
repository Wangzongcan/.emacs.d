;; CSS
(defvar css-indent-offset 2)

;; sass-mode
(use-package sass-mode
  :defer t
  :mode
  ("\\.sass\\'" . sass-mode))

;; scss-mode
(use-package scss-mode
  :defer t
  :mode
  ("\\.scss\\'" . scss-mode)
  :config
  (setq scss-compile-at-save nil))

(provide 'init-css)

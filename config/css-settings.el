;; css
(setq css-indent-offset 2)

(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

(require 'scss-mode)
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))

(provide 'css-settings)

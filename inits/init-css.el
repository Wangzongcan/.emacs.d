;; CSS
(defvar css-indent-offset 2)

;; sass
(autoload 'sass-mode "sass-mode")

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; scss
(autoload 'scss-mode "scss-mode")

(setq scss-compile-at-save nil)

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

(provide 'init-css)

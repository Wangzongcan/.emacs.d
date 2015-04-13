;; CSS
(defvar css-indent-offset 2)

;; SASS
(autoload 'sass-mode "sass-mode")

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; SCSS
(autoload 'scss-mode "scss-mode")

(setq scss-compile-at-save nil)

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

(require 'el-init)
(el-init-provide)

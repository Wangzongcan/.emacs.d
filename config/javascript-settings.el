(autoload 'js2-mode "js2-mode" nil t)

(setq js-indent-level 2
      js2-indent-level 2
      js2-basic-offset 2)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-jsx-mode))

(require 'coffee-mode)
(setq coffee-tab-width 2)

(provide 'javascript-settings)

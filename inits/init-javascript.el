;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6$" . js2-mode))

;; coffee-mode
(require 'coffee-mode)
(custom-set-variables
 '(coffee-tab-width 2))

(provide 'init-javascript)

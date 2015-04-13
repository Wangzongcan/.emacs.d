;; Javascript
(autoload 'js2-mode "js2-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
          '(lambda ()
             (setq tab-width 2
                   js2-basic-offset tab-width)))

;; CoffeeScript
(setq coffee-tab-width 2)

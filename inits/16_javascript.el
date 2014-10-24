;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook
          '(lambda ()
             (setq tab-width 2)
             (setq js2-basic-offset tab-width)))

;; coffee-mode
(setq coffee-tab-width 2)

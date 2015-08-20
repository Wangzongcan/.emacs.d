;; js2-mode
(use-package js2-mode
  :defer t
  :init
  (progn
    (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
    (add-to-list 'auto-mode-alist '("\\.es6$" . js2-mode))
    (add-hook 'js2-mode-hook
              '(lambda ()
                 (setq tab-width 2
                       js2-basic-offset tab-width)))))

;; coffee-mode
(use-package coffee-mode
  :defer t
  :config
  (progn
    (setq coffee-tab-width 2)))

(provide 'init-javascript)

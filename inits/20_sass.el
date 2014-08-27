(autoload 'sass-mode "sass-mode")
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))

(add-hook 'sass-mode-hook
          (lambda ()
            (rainbow-mode t)))

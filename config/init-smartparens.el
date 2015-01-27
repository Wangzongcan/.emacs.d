;; Smartparens
(package-install 'smartparens)

(require 'smartparens)

(smartparens-global-mode t)
(show-smartparens-global-mode t)

(setq sp-ignore-modes-list '(minibuffer-inactive-mode
                             web-mode))

(provide 'init-smartparens)

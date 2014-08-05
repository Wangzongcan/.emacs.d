(require 'smartparens-config)

(smartparens-global-mode t)
(show-smartparens-global-mode t)
(setq sp-highlight-pair-overlay nil)
(setq sp-ignore-modes-list '(minibuffer-inactive-mode
                             web-mode))

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)

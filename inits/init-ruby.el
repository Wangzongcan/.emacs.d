;; ruby

(autoload 'ruby-mode "ruby-mode" t)
(add-to-list 'auto-mode-alist '("\\.rb$latex " . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

(setq ruby-use-encoding-map nil
      ruby-insert-encoding-magic-comment nil)

(provide 'init-ruby)

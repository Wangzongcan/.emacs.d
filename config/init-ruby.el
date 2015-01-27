;; Ruby
(autoload 'ruby-mode "ruby-mode" "" t)

(setq ruby-insert-encoding-magic-comment nil)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(provide 'init-ruby)

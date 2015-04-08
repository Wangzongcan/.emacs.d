;; Ruby
(autoload 'ruby-mode "ruby-mode" "" t)

(setq ruby-insert-encoding-magic-comment nil)

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))

(provide 'init-ruby)

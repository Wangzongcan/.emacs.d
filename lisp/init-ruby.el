(use-package ruby-mode
  :ensure nil
  :interpreter "ruby"
  :custom
  (ruby-insert-encoding-magic-comment nil))

(use-package inf-ruby
  :hook ((ruby-mode . inf-ruby-minor-mode)
         (compilation-filter . inf-ruby-auto-enter)))

(use-package bundler)

(provide 'init-ruby)

(use-package ruby-mode
  :straight (:type built-in)
  :interpreter "ruby"
  :custom
  (ruby-insert-encoding-magic-comment nil))

(provide 'init-ruby)

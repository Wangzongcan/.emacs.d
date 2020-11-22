(use-package ruby-mode
  :straight (:type built-in)
  :interpreter "ruby"
  :config
  (setq ruby-insert-encoding-magic-comment nil))

(provide 'init-ruby)

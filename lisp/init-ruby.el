(use-package ruby-mode
  :straight (:type built-in)
  :interpreter "ruby"
  :init
  (setq ruby-insert-encoding-magic-comment nil))

(provide 'init-ruby)

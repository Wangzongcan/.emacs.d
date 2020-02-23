(use-package ruby-mode
  :straight nil
  :interpreter "ruby"
  :config
  (setq ruby-insert-encoding-magic-comment nil))

(use-package inf-ruby)

(provide 'init-ruby)

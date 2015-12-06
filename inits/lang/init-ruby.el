(use-package ruby-mode
  :mode (("\\.rb$'" . ruby-mode)
         ("Gemfile$" . ruby-mode))
  :interpreter "ruby"
  :init
  (setq ruby-use-encoding-map nil
        ruby-insert-encoding-magic-comment nil))

(provide 'init-ruby)

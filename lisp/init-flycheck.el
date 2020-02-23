(use-package flycheck
  :config
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (setq flycheck-ruby-rubocop-executable "bundle exec rubocop"))

(provide 'init-flycheck)

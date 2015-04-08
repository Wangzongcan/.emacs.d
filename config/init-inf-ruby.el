(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))

(add-hook 'inf-ruby-mode-hook
          (lambda () (setq truncate-lines nil)))

(provide 'init-inf-ruby)

;; Ruby Electric
(package-install 'ruby-electric)

(eval-after-load "ruby-mode"
  '(add-hook 'ruby-mode-hook 'ruby-electric-mode))

(provide 'init-ruby-electric)

(use-package chruby
  :ensure t
  :init
  (chruby "ruby-2.2.3"))

(use-package ruby-mode
  :ensure t
  :mode (("\\.rb$". ruby-mode)
         ("Gemfile". ruby-mode))
  :interpreter "ruby"
  :config
  (setq ruby-insert-encoding-magic-comment nil))

(use-package robe
  :ensure t
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends)))

(use-package inf-ruby
  :ensure t
  :init
  (add-hook 'after-init-hook 'inf-ruby-switch-setup))

(use-package rubocop
  :ensure t
  :init
  (add-hook 'ruby-mode-hook #'rubocop-mode))

(provide 'init-ruby)

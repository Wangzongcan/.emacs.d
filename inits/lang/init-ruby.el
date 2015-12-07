(use-package chruby
  :ensure t
  :init
  (chruby "ruby-2.2.3"))

(use-package enh-ruby-mode
  :ensure t
  :mode (("\\.rb$". enh-ruby-mode)
         ("Gemfile". enh-ruby-mode))
  :interpreter "ruby"
  :config
  (setq ruby-insert-encoding-magic-comment nil
        enh-ruby-add-encoding-comment-on-save nil))

(use-package robe
  :ensure t
  :init
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends)))

(use-package inf-ruby
  :ensure t
  :init
  (add-hook 'after-init-hook 'inf-ruby-switch-setup))

(provide 'init-ruby)

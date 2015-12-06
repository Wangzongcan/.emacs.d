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

(provide 'init-ruby)

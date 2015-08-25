;; enh-ruby-mode
(use-package enh-ruby-mode
  :defer t
  :mode
  (("\\(Rake\\|Thor\\|Guard\\|Gem\\|Cap\\|Vagrant\\|Berks\\|Pod\\|Puppet\\)file\\'" . enh-ruby-mode)
   ("\\.\\(rb\\|rabl\\|ru\\|builder\\|rake\\|thor\\|gemspec\\|jbuilder\\)\\'" . enh-ruby-mode))
  :config
  (progn
    (setq enh-ruby-deep-indent-paren nil
          enh-ruby-hanging-paren-deep-indent-level 2)))

;; chruby
(use-package chruby
  :init
  (chruby "ruby"))

;; rspec-mode
(use-package rspec-mode)

(provide 'init-ruby)

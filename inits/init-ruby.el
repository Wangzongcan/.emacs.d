;; chruby
(use-package chruby
  :init
  (chruby "ruby"))


(use-package ruby-mode
          :defer t
          :mode
          (("\\(Rake\\|Thor\\|Guard\\|Gem\\|Cap\\|Vagrant\\|Berks\\|Pod\\|Puppet\\)file\\'" . ruby-mode)
           ("\\.\\(rb\\|rabl\\|ru\\|builder\\|rake\\|thor\\|gemspec\\|jbuilder\\)\\'" . ruby-mode))
          :init
          (setq ruby-use-encoding-map nil
                ruby-insert-encoding-magic-comment nil))

(provide 'init-ruby)

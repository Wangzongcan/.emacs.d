;; chruby
(use-package chruby
  :init
  (chruby "ruby"))

;; ;; enh-ruby-mode
;; (use-package enh-ruby-mode
;;   :defer t
;;   :mode
;;   (("\\(Rake\\|Thor\\|Guard\\|Gem\\|Cap\\|Vagrant\\|Berks\\|Pod\\|Puppet\\)file\\'" . enh-ruby-mode)
;;    ("\\.\\(rb\\|rabl\\|ru\\|builder\\|rake\\|thor\\|gemspec\\|jbuilder\\)\\'" . enh-ruby-mode))
;;   :config
;;   (progn
;;     (autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;;     (setq enh-ruby-deep-indent-paren nil
;;           enh-ruby-hanging-paren-deep-indent-level 2)))

(use-package ruby-mode
          :defer t
          :mode
          (("\\(Rake\\|Thor\\|Guard\\|Gem\\|Cap\\|Vagrant\\|Berks\\|Pod\\|Puppet\\)file\\'" . ruby-mode)
           ("\\.\\(rb\\|rabl\\|ru\\|builder\\|rake\\|thor\\|gemspec\\|jbuilder\\)\\'" . ruby-mode))
          :init
          (setq ruby-use-encoding-map nil
                ruby-insert-encoding-magic-comment nil))

;; rspec-mode
(use-package rspec-mode)

(use-package rubocop)

(provide 'init-ruby)

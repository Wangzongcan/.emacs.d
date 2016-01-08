(require 'chruby)
(chruby "ruby-2.2.3")

;; ruby-mode
(require 'ruby-mode)
(setq ruby-insert-encoding-magic-comment nil)

(add-to-list 'auto-mode-alist '("\\(Capfile\\|Gemfile\\|[rR]akefile\\)$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.\\(rb\\|rake\\|irbrc\\|gemrc\\|ru\\|pryrc\\)$" . ruby-mode))

(provide 'ruby-settings)

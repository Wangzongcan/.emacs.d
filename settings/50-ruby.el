(use-package chruby
  :ensure t
  :config
  (chruby "ruby-2.2.3"))

(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)

  (add-hook 'ruby-mode-hook 'my/ruby-mode-hooks))

(defun my/ruby-mode-hooks ()
  (subword-mode 1))

(provide '50-ruby)

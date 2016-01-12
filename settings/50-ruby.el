(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)

  (add-hook 'ruby-mode-hook 'my/ruby-mode-hooks))

(defun my/ruby-mode-hooks ()
  (linum-mode 1))

(provide '50-ruby)

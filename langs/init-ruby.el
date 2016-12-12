(use-package rbenv
  :ensure t
  :config
  (global-rbenv-mode 1))

(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)

  (add-hook 'ruby-mode-hook 'my/ruby-mode-hook))

(defun my/ruby-mode-hook()
  (use-package smartparens-ruby))

(provide 'init-ruby)

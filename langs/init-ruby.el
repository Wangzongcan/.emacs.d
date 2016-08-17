(use-package rbenv
  :ensure t
  :init
  (global-rbenv-mode))

(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'my/ruby-mode-hook))

(defun my/ruby-mode-hook()
  (superword-mode))

(provide 'init-ruby)

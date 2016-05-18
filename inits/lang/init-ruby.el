(use-package chruby
  :ensure t
  :config
  (chruby "ruby-2.3.1"))

(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'my/ruby-mode-hook))

(defun my/ruby-mode-hook()
  (flycheck-mode)
  (superword-mode)
  (whitespace-mode)
  (smartparens-mode)
  (rainbow-delimiters-mode)
  (highlight-indentation-current-column-mode))

(provide 'init-ruby)

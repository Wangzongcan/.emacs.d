(use-package chruby
  :ensure t
  :config
  (chruby "ruby-2.3.0"))

(use-package ruby-mode
  :mode (("\\.rb$" . ruby-mode))
  :interpreter (("ruby" . ruby-mode))
  :config
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'my/ruby-mode-hook))

(use-package robe
  :ensure t
  :diminish robe-mode
  :config
  (add-hook 'ruby-mode-hook 'robe-mode)
  (push 'company-robe company-backends))

(defun my/ruby-mode-hook()
  (flycheck-mode)
  (smartparens-mode)
  (rainbow-delimiters-mode)
  (highlight-indentation-current-column-mode))

(provide 'init-ruby)

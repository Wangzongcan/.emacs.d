(use-package prog-mode
  :config
  (add-hook 'prog-mode-hook 'my/prog-mode-hook))

(defun my/prog-mode-hook ()
  (flycheck-mode)
  (yas-minor-mode)
  (whitespace-mode)
  (smartparens-mode)
  (rainbow-delimiters-mode))

(provide 'init-prog)

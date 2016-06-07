(use-package prog-mode
  :config
  (add-hook 'prog-mode-hook 'my/prog-mode-hook))

(defun my/prog-mode-hook ()
  (nlinum-mode)
  (flycheck-mode)
  (yas-minor-mode)
  (whitespace-mode)
  (smartparens-mode)
  (rainbow-delimiters-mode)
  (highlight-indentation-current-column-mode))

(provide 'init-prog)

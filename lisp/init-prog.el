(use-package prog-mode
  :config
  (add-hook 'prog-mode-hook 'my/prog-mode-hook))

(defun my/prog-mode-hook ()
  (flycheck-mode 1)
  (nlinum-mode 1)
  (rainbow-delimiters-mode 1)
  (smartparens-mode 1)
  (subword-mode 1)
  (whitespace-mode 1))

(provide 'init-prog)

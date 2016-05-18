(add-hook 'emacs-lisp-mode-hook 'my/emacs-lisp-mode-hook)

(defun my/emacs-lisp-mode-hook()
  (flycheck-mode)
  (whitespace-mode)
  (smartparens-mode)
  (rainbow-delimiters-mode)
  (highlight-indentation-current-column-mode))

(provide 'init-emacs-lisp)

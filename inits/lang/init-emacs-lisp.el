(add-hook 'emacs-lisp-mode-hook 'my/emacs-lisp-mode-hook)

(defun my/emacs-lisp-mode-hook()
  (flycheck-mode)
  (smartparens-mode)
  (indent-guide-mode)
  (rainbow-delimiters-mode))

(provide 'init-emacs-lisp)

(use-package avy
  :defer t
  :bind
  (("M-g g" . avy-goto-line)
   ("M-g w" . avy-goto-word-1)
   ("M-g e" . avy-goto-word-0)
   ("C-:" . avy-goto-char)
   ("C-'" . avy-goto-char-2))
  :init
  (avy-setup-default)
  :config
  (setq avy-style 'at-full
        avy-background t))

(provide 'init-avy)

;; rainbow-delimiters
(use-package rainbow-delimiters
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)))

(provide 'init-rainbow-delimiters)

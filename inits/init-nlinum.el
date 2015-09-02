;; nlinum
(use-package nlinum
  :defer t
  :init
  (progn
    (setq nlinum-format "%3d \u2502 ")
    (add-hook 'prog-mode-hook 'nlinum-mode)))

(provide 'init-nlinum)

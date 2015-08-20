;; nlinum
(use-package nlinum
  :defer t
  :init
  (progn
    (add-hook 'prog-mode-hook 'nlinum-mode))
  :config
  (progn
    (setq nlinum-format "%3d \u2502")))

(provide 'init-nlinum)

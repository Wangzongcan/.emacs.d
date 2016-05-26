(use-package magit
  :ensure t
  :defer t
  :config
  (setq magit-log-arguments '("--graph" "--color" "--decorate" "--show-signature" "-n256" "++order=date")))

(provide 'init-git)

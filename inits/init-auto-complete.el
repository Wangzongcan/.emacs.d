;; auto-complete
(use-package auto-complete
  :defer t
  :init
  (progn
    (ac-config-default))
  :config
  (progn
    (setq ac-auto-start nil)))

;; ac-helm
(use-package ac-helm
  :defer t
  :bind
  ("C-;" . ac-complete-with-helm)
  :config
   (bind-key "C-;" 'ac-complete-with-helm ac-complete-mode-map))

(provide 'init-auto-complete)

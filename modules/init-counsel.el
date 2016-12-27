(use-package counsel
  :ensure t
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil)

  (evil-leader/set-key
    "SPC" 'counsel-M-x
    "cy" 'counsel-yank-pop
    "ci" 'counsel-imenu
    "cgg" 'counsel-git-grep
    "ca" 'counsel-ag))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(provide 'init-counsel)

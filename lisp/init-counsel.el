(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config (ivy-mode 1))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(use-package counsel
  :ensure t
  :commands (counsel-M-x
             counsel-imenu
             counsel-yank-pop)
  :bind ("M-x" . counsel-M-x)
  :init (evil-leader/set-key
          "SPC" 'counsel-M-x
          "ci" 'counsel-imenu
          "cy" 'counsel-yank-pop))

(provide 'init-counsel)

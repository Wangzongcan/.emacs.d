(use-package counsel
  :ensure t
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x" . counsel-M-x)))

(use-package ivy
  :ensure t
  :bind (("C-x C-r" . ivy-recentf)
         ("C-c C-r" . ivy-resume))
  :init
  (add-hook 'after-init-hook #'ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(provide 'init-counsel)

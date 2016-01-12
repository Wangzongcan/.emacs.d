(use-package counsel
  :ensure t
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x" . counsel-M-x)))

(use-package ivy
  :diminish ivy-mode
  :bind (("C-x C-r" . ivy-recentf))
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t))

(use-package swiper
  :bind ("C-s" . swiper))

(provide '30-counsel)

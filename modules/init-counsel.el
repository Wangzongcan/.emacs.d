(use-package counsel
  :ensure t
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x" . counsel-M-x))

  :ensure t
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(provide 'init-counsel)

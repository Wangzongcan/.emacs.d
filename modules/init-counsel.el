(use-package counsel
  :ensure t
  :bind (("C-x C-f" . counsel-find-file)
         ("M-x" . counsel-M-x)))

(use-package ivy
  :ensure t
  :init
  (add-hook 'after-init-hook #'ivy-mode)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(provide 'init-counsel)

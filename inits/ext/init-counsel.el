(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)))

(use-package ivy
  :init
  (setq ivy-use-virtual-buffers t)
  :config
  (ivy-mode 1))

(use-package swiper
  :ensure t
  :bind ("\C-s" . swiper))

(provide 'init-counsel)

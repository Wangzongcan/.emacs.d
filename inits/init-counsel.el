;; counsel

(use-package counsel
  :bind
  (("C-s" . swiper)
   ("M-x" . counsel-M-x)
   ("C-x C-f" . counse-find-file))
  :init
  (progn
    (ivy-mode 1)

    (setq ivy-use-virtual-buffers t)))

(provide 'init-counsel)

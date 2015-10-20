;; counsel

(use-package counsel
  :bind
  (("C-s" . swiper)
   ("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-x C-g" . counsel-ag)
   ("M-y" . counsel-yank-pop))
  :init
  (progn
    (ivy-mode 1)
    (setq ivy-display-style 'fancy
          ivy-use-virtual-buffers t
          counsel-yank-pop-truncate t)))

(provide 'init-counsel)

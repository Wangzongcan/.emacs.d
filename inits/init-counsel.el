;; counsel

(use-package counsel
  :bind
  ("C-s" . swiper)
  :init
  (progn
    (ivy-mode 1)

    (setq ivy-use-virtual-buffers t)))

(provide 'init-counsel)

(use-package ivy
  :diminish
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-selectable-prompt t)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(use-package counsel
  :diminish
  :hook (after-init . counsel-mode))

(use-package swiper
  :bind ("C-s" . swiper-isearch))

(provide 'init-ivy)

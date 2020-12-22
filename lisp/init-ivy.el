(use-package ivy
  :hook (after-init . ivy-mode)
  :custom
  (ivy-use-selectable-prompt t)
  (ivy-initial-inputs-alist nil)
  :config
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line)
)

(use-package counsel
  :hook (ivy-mode . counsel-mode)
  :bind ("C-x C-b" . counsel-switch-buffer))

(use-package swiper
  :bind ("C-s" . swiper-isearch))

(provide 'init-ivy)

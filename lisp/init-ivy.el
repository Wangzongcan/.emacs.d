(use-package ivy
  :hook (after-init . ivy-mode)
  :config
  (setq ivy-use-selectable-prompt t
        ivy-initial-inputs-alist nil)
  (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-s" . counsel-grep-or-swiper)))

(use-package ivy-prescient
  :hook (ivy-mode . ivy-prescient-mode))

(use-package counsel-projectile
  :defer t
  :commands counsel-projectile-rg
  :bind ([remap projectile-ripgrep] . counsel-projectile-rg))

(provide 'init-ivy)

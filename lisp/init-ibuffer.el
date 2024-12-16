(use-package ibuffer
  :ensure nil
  :bind ("C-x C-b" . ibuffer))

(use-package ibuffer-vc
  :config
  (defun my/ibuffer-vc ()
    (ibuffer-vc-set-filter-groups-by-vc-root)
    (unless (eq ibuffer-sorting-mode 'alphabetic)
      (ibuffer-do-sort-by-alphabetic)))
  :hook (ibuffer . my/ibuffer-vc))

(provide 'init-ibuffer)

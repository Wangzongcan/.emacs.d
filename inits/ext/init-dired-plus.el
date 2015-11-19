(use-package dired+
  :ensure t)

(use-package dired-single
  :ensure t
  :init
  (setq single-use-magic-buffer t
        dired-single-magic-buffer-name "*dired*")
  :config
  (bind-key "RET" 'dired-single-buffer dired-mode-map)
  (add-hook 'dired-mode-hook #'dired-single-toggle-buffer-name))

(provide 'init-dired-plus)

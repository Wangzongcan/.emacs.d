;; dired
(setq insert-directory-program "ls"
      dired-listing-switches "-aBhl --group-directories-first"
      dired-use-ls-dired t)

(add-hook 'dired-mode-hook
          (lambda ()
            (hl-line-mode t)
            (dired-single-toggle-buffer-name)))

(use-package dired+)

;; dired-single
(use-package dired-single
  :defer t
  :config
  (progn
    (bind-key "RET" 'dired-single-buffer dired-mode-map)

    (setq single-use-magic-buffer t
          dired-single-magic-buffer-name "*dired*")))

(provide 'init-dired)

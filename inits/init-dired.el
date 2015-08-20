;; dired
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil
      dired-use-ls-dired nil)

(add-hook 'dired-mode-hook
          (lambda ()
            (hl-line-mode t)
            (dired-single-toggle-buffer-name)))
;; dired+
(use-package dired+
  :defer t
  :config
  (progn
    (setq diredp-hide-details-initially-flag nil
          diredp-hide-details-propagate-flag nil)))

;; dired-single
(use-package dired-single
  :defer t
  :config
  (progn
    (bind-key "RET" 'dired-single-buffer dired-mode-map)

    (setq single-use-magic-buffer t
          dired-single-magic-buffer-name "*dired*")))

(provide 'init-dired)

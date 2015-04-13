;; dired
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil
      dired-use-ls-dired nil)

(add-hook 'dired-mode-hook
          (lambda ()
            (hl-line-mode t)
            (dired-single-toggle-buffer-name)))

(provide 'init-dired)

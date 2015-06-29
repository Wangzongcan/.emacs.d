;; dired
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil
      dired-use-ls-dired nil)

(add-hook 'dired-mode-hook
          (lambda ()
            (hl-line-mode t)
            (dired-single-toggle-buffer-name)))
;; dired+
(require 'dired+)

(setq diredp-hide-details-initially-flag nil
      diredp-hide-details-propagate-flag nil)

;; dired-single
(setq single-use-magic-buffer t
      dired-single-magic-buffer-name "*dired*")

(define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-j") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-l")
  (lambda ()
    (interactive)
    (dired-single-buffer "..")))

(provide 'init-dired)

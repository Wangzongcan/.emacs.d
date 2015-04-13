;; Dired
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil
      dired-use-ls-dired nil)

(add-hook 'dired-mode-hook
          (lambda () (hl-line-mode t)))

;; Dired+
(require 'dired+)

;; Dired-Single
(setq single-use-magic-buffer t
      dired-single-magic-buffer-name "*dired*")

(define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-j") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-l")
  (lambda ()
    (interactive)
    (dired-single-buffer "..")))

(add-hook 'dired-mode-hook
          (lambda ()
            (dired-single-toggle-buffer-name)))

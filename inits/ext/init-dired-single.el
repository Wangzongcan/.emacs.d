;; dired-single
(setq single-use-magic-buffer t
      dired-single-magic-buffer-name "*dired*")

(define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-j") 'dired-single-buffer)
(define-key dired-mode-map (kbd "C-l")
  (lambda ()
    (interactive)
    (dired-single-buffer "..")))

(provide 'init-dired-single)

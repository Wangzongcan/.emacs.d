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

(provide 'init-dired-single)

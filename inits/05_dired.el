(add-hook 'dired-mode-hook
          (lambda ()
            (require 'dired+)

            (define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
            (define-key dired-mode-map (kbd "C-l")
              (lambda ()
                (interactive)
                (dired-single-buffer "..")))

            (setq dired-single-use-magic-buffer t)
            (setq dired-single-magic-buffer-name "*dired*")
            (dired-single-toggle-buffer-name)))

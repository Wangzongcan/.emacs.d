(require 'dired+)

(require 'dired-single)
(setq single-use-magic-buffer t
      dired-single-magic-buffer-name "*dired*")

(define-key dired-mode-map [return] 'dired-single-buffer)

(add-hook 'dired-mode-hook #'dired-single-toggle-buffer-name)

(provide 'dired-settings)

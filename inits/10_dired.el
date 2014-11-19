(eval-after-load "dired"
  '(progn
     (require 'dired+)
     (require 'dired-single)

     (define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
     (define-key dired-mode-map (kbd "C-l")
              (lambda ()
                (interactive)
                (dired-single-buffer "..")))

     (setq dired-single-use-magic-buffer t)))

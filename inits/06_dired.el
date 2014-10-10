(eval-after-load "dired"
  '(progn
     (require 'dired+)
     (require 'dired-single)

     (add-hook 'dired-mode-hook
               (lambda ()
                 (define-key dired-mode-map (kbd "RET") 'dired-single-buffer)
                 (define-key dired-mode-map (kbd "C-j") 'dired-single-buffer)
                 (define-key dired-mode-map (kbd "C-k")
                   (lambda ()
                     (interactive)
                     (dired-single-buffer "..")))
                 (setq dired-single-use-magic-buffer t)
                 (setq dired-single-magic-buffer-name "*dired*")
                 (dired-single-toggle-buffer-name)))))

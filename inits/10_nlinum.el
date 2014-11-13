(add-hook 'prog-mode-hook '(lambda ()
                             (progn
                               (nlinum-mode t)
                               (setq nlinum-format "%3d "))))

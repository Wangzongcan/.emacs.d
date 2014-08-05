(eval-after-load "magit"
  '(progn
     (add-hook 'magit-status-mode-hook
               (lambda ()
                 (hl-line-mode t)))))

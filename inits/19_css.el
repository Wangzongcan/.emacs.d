(defvar css-indent-offset 2)

(eval-after-load "css-mode"
  '(progn
     (add-hook 'css-mode-hook
               (lambda ()
                 (rainbow-mode t)))))

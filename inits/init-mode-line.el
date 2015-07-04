;; write a function to do the spacing
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
  aligned respectively."
  (let* ((available-width (- (window-width) (length left) 1)))
    (format (format " %%s %%%ds" available-width) left right)))

(setq-default mode-line-format
              '((:eval (simple-mode-line-render
                        ;; left
                        (format-mode-line
                         (list
                          '(:eval (propertize "%b" 'face 'font-lock-keyword-face))

                          " "

                          '(:eval (propertize "%m" 'face 'font-lock-string-face))

                          " "

                          '(:eval
                            (cond
                             ((string= evil-state 'visual) "V")
                             ((string= evil-state 'normal) "N")
                             ((string= evil-state 'motion) "M")
                             ((string= evil-state 'insert) "I")
                             ((string= evil-state 'replace) "R")
                             ((string= evil-state 'emacs) "E")
                             ((string= evil-state 'operator) "O")))))

                        ;; right
                        (format-mode-line
                         (list
                          '(:eval (propertize (if overwrite-mode "Ovr" "Ins") 'face 'font-lock-constant-face))

                          '(:eval (when (buffer-modified-p)
                                    (concat ","  (propertize "Mod" 'face 'font-lock-warning-face))))

                          '(:eval (when buffer-read-only
                                    (concat ","  (propertize "RO" 'face 'font-lock-type-face))))

                          `(vc-mode vc-mode)))))))

(provide 'init-mode-line)

;; write a function to do the spacing
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
  aligned respectively."
  (let ((available-width (- (window-width) (length left) 1)))
    (format (format " %%s %%%ds" available-width) left right)))

(setq-default mode-line-format
              '((:eval (simple-mode-line-render
                        ;; left
                        (format-mode-line
                         (list
                          '(:eval (propertize "%b" 'face 'font-lock-keyword-face))

                          " "

                          '(:eval (propertize "%m" 'face 'font-lock-string-face))
                          ))

                        ;; right
                        (format-mode-line
                         (list
                          '(:eval (propertize (if overwrite-mode "Ovr" "Ins") 'face 'font-lock-constant-face))

                          '(:eval (when (buffer-modified-p)
                                    (concat ","  (propertize "Mod" 'face 'font-lock-warning-face))))

                          '(:eval (when buffer-read-only
                                    (concat ","  (propertize "RO" 'face 'font-lock-type-face))))

                          " "

                          '(:eval
                            (cond
                             ((string= evil-state 'visual) (propertize "V" 'face '(foreground-color . "orange")))
                             ((string= evil-state 'normal) (propertize "N" 'face '(foreground-color . "green")))
                             ((string= evil-state 'motion) "M")
                             ((string= evil-state 'insert) (propertize "I" 'face '(foreground-color . "red")))
                             ((string= evil-state 'replace) (propertize "R" 'face '(foreground-color . "red")))
                             ((string= evil-state 'emacs) (propertize "E" 'face '(foreground-color . "red")))
                             ((string= evil-state 'operator) (propertize "O" 'face '(foreground-color . "red")))))

                          `(vc-mode vc-mode)))))))

(provide 'init-mode-line)

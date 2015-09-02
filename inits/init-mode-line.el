;; write a function to do the spacing
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
  aligned respectively."
  (let* ((space-length (if (derived-mode-p 'prog-mode 'web-mode 'enh-ruby-mode) -4 1))
         (available-width (- (window-width) (length left) space-length)))
    (format (format " %%s %%%ds" available-width) left right)))

(setq-default mode-line-format
              '((:eval (simple-mode-line-render
                        ;; left
                        (format-mode-line
                         (list
                          '(:eval (propertize (window-numbering-get-number-string) 'face 'font-lock-keyword-face))

                          '(:eval (propertize " %b" 'face 'font-lock-string-face))

                          '(:eval (propertize " %m" 'face 'font-lock-constant-face))

                          '(:eval (when (projectile-project-p)
                                    (propertize (concat " " (projectile-project-name)) 'face 'font-lock-keyword-face)))))

                        ;; right
                        (format-mode-line
                         (list

                          '(:eval (when (buffer-modified-p)
                                    (concat (propertize "Mod" 'face 'font-lock-warning-face) " ")))

                          '(:eval (when buffer-read-only
                                    (concat (propertize "RO" 'face 'font-lock-type-face) " ")))

                          '(:eval (unless (eq (magit-toplevel) nil)
                                    (propertize (concat (magit-get-current-branch) " ") 'face 'font-lock-type-face)))

                          '(:eval
                            (cond
                             ((string= evil-state 'visual) (propertize "V" 'face '(foreground-color . "gray")))
                             ((string= evil-state 'normal) (propertize "N" 'face '(foreground-color . "DarkGoldenrod2")))
                             ((string= evil-state 'motion) "M")
                             ((string= evil-state 'insert) (propertize "I" 'face '(foreground-color . "chartreuse3")))
                             ((string= evil-state 'replace) (propertize "R" 'face '(foreground-color . "red")))
                             ((string= evil-state 'emacs) (propertize "E" 'face '(foreground-color . "SkyBlue2")))
                             ((string= evil-state 'operator) (propertize "O" 'face '(foreground-color . "red")))))

                          '(:eval (unless window-system "  "))))))))

(provide 'init-mode-line)

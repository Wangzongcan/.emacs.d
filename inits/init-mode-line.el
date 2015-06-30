(setq-default mode-line-format
              (list
               " - "

               '(:eval (propertize (format "%s" (window-numbering-get-number-string)) 'face 'font-lock-defaults))

               " - "

               '(:eval (propertize "%b" 'face 'font-lock-keyword-face))

               " - "

               '(:eval (propertize "%m" 'face 'font-lock-string-face
                                   'help-echo buffer-file-coding-system))

               " - "

               '(:eval (propertize (if overwrite-mode "Ovr" "Ins")
                                   'face 'font-lock-preprocessor-face))

               '(:eval (when (buffer-modified-p)
                         (concat ","  (propertize "Mod" 'face 'font-lock-warning-face))))

               '(:eval (when buffer-read-only
                         (concat ","  (propertize "RO" 'face 'font-lock-type-face))))

               '(:eval (when vc-mode
                         (concat " -"
                                 (propertize (format "%s" vc-mode) 'face 'font-lock-string-face))))

               " %-"))

(provide 'init-mode-line)

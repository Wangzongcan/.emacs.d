(when (string-equal system-type "darwin")
  (progn
    (setq mac-command-modifier 'super
          mac-option-modifier 'meta)))

(provide 'system-settings)

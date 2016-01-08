(setq inhibit-startup-screen t)

(setq savehist-additional-variables '(search ring regexp-search-ring)
      savehist-autosave-interval 60
      )

(winner-mode 1)

(line-number-mode 1)
(column-number-mode 1)

(setq frame-resize-pixelwise t)

(setq mac-command-modifier 'super
      mac-option-modifier 'meta)

(provide 'setup-environment)

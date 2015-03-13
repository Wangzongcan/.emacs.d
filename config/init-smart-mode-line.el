;; Smart Mode Line
(package-install 'smart-mode-line)

(require 'smart-mode-line)

(setq sml/theme 'respectful
      sml/no-confirm-load-theme t
      sml/shorten-modes t
      sml/shorten-directory t
      sml/mode-width 'full
      sml/name-width 30)

(sml/setup)

(provide 'init-smart-mode-line)

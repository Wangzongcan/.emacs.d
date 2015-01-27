;; Smart Mode Line
(package-install 'smart-mode-line)

(require 'smart-mode-line)

(setq sml/theme 'respectful
      sml/no-confirm-load-theme t
      sml/mode-width 'full
      sml/shorten-modes t
      sml/shorten-directory t
      sml/name-width 20)

(sml/setup)

(provide 'init-smart-mode-line)

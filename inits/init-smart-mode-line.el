;; smart-mode-line
(setq sml/theme 'respectful
      sml/no-confirm-load-theme t
      sml/shorten-directory t
      sml/shorten-modes t)

(setq rm-blacklist '(" SP"
                     " Helm"
                     " Undo-Tree"
                     " WS"))

(sml/setup)

(provide 'init-smart-mode-line)

(setq global-mark-ring-max 5000
      mark-ring-max 5000
      mode-require-final-newline t
      )

(setq-default tab-width 4)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(delete-selection-mode)
(global-set-key (kbd "RET") 'newline-and-indent)

(setq kill-ring-max 5000
      kill-whole-line t)

(provide 'setup-editing)

(use-package no-littering
  :demand)

(use-package wgrep
  :init
  (setq wgrep-auto-save-buffer t
        wgrep-change-readonly-file t))

(use-package youdao-dictionary
  :bind ("C-c y" . youdao-dictionary-search-at-point)
  :config
  (setq url-automatic-caching t))

(provide 'init-utils)

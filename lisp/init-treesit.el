(use-package treesit
  :straight nil
  :custom
  (treesit-font-lock-level 4))

(use-package treesit-auto
  :hook (after-init . global-treesit-auto-mode)
  :custom
  (treesit-auto-install 'prompt))

(provide 'init-treesit)

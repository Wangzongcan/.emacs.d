(use-package treesit
  :straight (:type built-in)
  :custom
  (treesit-font-lock-level 4))

(use-package treesit-auto
  :hook (after-init . global-treesit-auto-mode)
  :custom
  (treesit-auto-install 'prompt))

(provide 'init-treesit)

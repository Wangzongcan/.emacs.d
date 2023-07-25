(use-package treesit
  :straight nil
  :custom
  (treesit-font-lock-level 4)
  :init
  (push '(ruby-mode . ruby-ts-mode) major-mode-remap-alist)
  (push '(js-mode . js-ts-mode) major-mode-remap-alist))

(provide 'init-treesit)

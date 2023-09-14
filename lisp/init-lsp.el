(use-package lsp-mode
  :hook ((typescript-ts-mode tsx-ts-mode) . lsp-deferred)
  :commands (lsp lsp-deferred)
  :custom
  (lsp-headerline-breadcrumb-enable nil))

(provide 'init-lsp)

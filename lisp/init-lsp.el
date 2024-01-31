(use-package lsp-bridge
  :straight '(lsp-bridge :type git :host github :repo "manateelazycat/lsp-bridge"
            :files (:defaults "*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
            :build (:not compile))
  :hook
  (lsp-bridge-mode . (lambda () (corfu-mode -1)))
  :custom
  (lsp-bridge-python-command "~/.asdf/shims/python3")
  :config
  (setq lsp-bridge-user-langserver-dir (expand-file-name "lsp-bridge/langserver/" no-littering-etc-directory)
        lsp-bridge-user-multiserver-dir (expand-file-name "lsp-bridge/multiserver/" no-littering-etc-directory)))

(provide 'init-lsp)

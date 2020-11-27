(use-package general
  :config
  (general-create-definer my-leader-def
    :prefix "SPC"))

(use-package which-key
  :hook (after-init . which-key-mode))

(provide 'init-key-bindings)

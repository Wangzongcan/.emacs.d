(use-package yaml-mode
  :ensure t
  :mode ("\\.yml$" . yaml-mode)
  :config (add-hook 'yaml-mode-hook #'my/yaml-mode-hook))

(defun my/yaml-mode-hook()
  (nlinum-mode 1))

(provide 'init-yaml)

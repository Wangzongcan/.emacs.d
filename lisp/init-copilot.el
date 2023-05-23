(use-package copilot
  :straight (:host github :repo "zerolfx/copilot.el" :files ("dist" "*.el"))
  :hook (prog-mode . copilot-mode)
  :preface
  (defun my/copilot-tab ()
    (interactive)
    (or (copilot-accept-completion)
        (indent-for-tab-command)))
  :bind (:map copilot-completion-map
              ("TAB" . my/copilot-tab)
              ("<tab>" . my/copilot-tab)))

(provide 'init-copilot)

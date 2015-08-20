;; emmet-mode
(use-package emmet-mode
  :defer t
  :init
  (progn
    (add-hook 'web-mode-hook 'emmet-mode)
    (add-hook 'css-mode-hook 'emmet-mode)
    (add-hook 'scss-mode-hook 'emmet-mode)
    (add-hook 'sass-mode-hook 'emmet-mode)
    (add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))))
  :config
  (progn
    (unbind-key "C-<return>" emmet-mode-keymap)))

(provide 'init-emmet)

(require 'emmet-mode)

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'scss-mode-hook 'emmet-mode)
(add-hook 'sass-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2)))

(define-key emmet-mode-keymap (kbd "<C-return>") 'nil)

(provide 'init-emmet)

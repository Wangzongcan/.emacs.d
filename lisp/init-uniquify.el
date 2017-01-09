(use-package uniquify
  :config
  (setq uniquify-separator "/"
        uniquify-after-kill-buffer-p t
        uniquify-buffer-name-style 'forward
        uniquify-ignore-buffers-re "^\\*"))

(provide 'init-uniquify)

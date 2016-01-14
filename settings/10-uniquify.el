(use-package uniquify
  :config
  (setq uniquify-buffer-name-style 'forward
        uniquify-after-kill-buffer-p t
        uniquify-ignore-buffers-re "^\\*"))


(provide '10-uniquify)

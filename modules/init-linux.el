(use-package xclip
  :ensure t
  :if (not (window-system))
  :init (xclip-mode 1))

(provide 'init-linux)

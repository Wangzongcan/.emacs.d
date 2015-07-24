(setq linum-format "%3d")

(add-hook 'prog-mode-hook 'linum-mode)

(require 'hlinum)
(hlinum-activate)

(provide 'init-linum)

;; Rainbow Delimiters
(package-install 'rainbow-delimiters)

(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'init-rainbow-delimiters)

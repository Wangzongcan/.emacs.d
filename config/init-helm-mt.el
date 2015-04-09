(unless (package-installed-p 'helm-mt)
  (package-install 'helm-mt))

(require 'helm-mt)
(global-set-key (kbd "C-x t") 'helm-mt)

(provide 'init-helm-mt)

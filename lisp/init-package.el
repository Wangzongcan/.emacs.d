;; package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq package-enable-at-startup nil)
(package-initialize)

(setq package-install-upgrade-built-in t)

;; use-package
(use-package use-package
  :config
  (setq use-package-always-ensure t
        use-package-always-defer t
        use-package-expand-minimally t
        use-package-enable-imenu-support t))

(use-package bind-key)

(provide 'init-package)

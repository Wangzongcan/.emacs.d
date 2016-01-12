;; 插件管理和一些相关的插件

;; Cask
(require 'cask)
(cask-initialize)
(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))

(require 'pallet)
(pallet-mode t)

(eval-when-compile
  (require 'use-package))
(setq use-package-verbose t)

;; Diminish
(use-package diminish :ensure t)

;; Bind Key
(use-package bind-key :ensure t)

(provide '00-package)

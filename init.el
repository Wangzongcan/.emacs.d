(require 'cask)
(cask-initialize)
(add-to-list 'auto-mode-alist '("Cask" . lisp-mode))

(require 'use-package)

(use-package bind-key
  :ensure t)

(use-package pallet
  :config
  (pallet-mode t))

(use-package el-init
  :ensure t
  :init
  (el-init-load
   (expand-file-name "inits/" user-emacs-directory)
   :subdirectories '("core" "ext" "lang")))

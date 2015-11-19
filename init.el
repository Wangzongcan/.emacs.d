(require 'cask)
(cask-initialize)

(require 'pallet)
(pallet-mode t)

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(require 'el-init)
(el-init-load
  (expand-file-name "inits/" user-emacs-directory)
  :subdirectories '("core" "ext" "lang"))
